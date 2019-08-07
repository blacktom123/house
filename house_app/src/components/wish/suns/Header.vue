<template>
    <div class="header">
        <div class="title">我的心愿单</div>
        <div class="wish-list">
            <div v-if="!wishList.length" class="nohavewishlist">暂无心愿单,请先收藏哦</div>
            <div v-else>
                <swiper class="swiper" :options="swiperOption" :v-if="imgslen">
                    <swiper-slide v-for="(item,index) of this.imgs" :key="index">
                        <div @click="jumptodetail(infoIds[index])" class="swiper-img-wrapper">
                            <img class="swiper-img" :src="item" alt="">
                        </div>
                    <div class="remove" @click="removemsg(infoIds[index])">取消心愿</div>
                    <div class="wishidx">{{index+1}}/{{imgslen}}</div>
                    <div class="hstitle">{{titles[index]}}</div>
                    </swiper-slide>
                </swiper>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return { 
            swiperOption:{
                loop:true,
                observeParents:true,
                observer:true
            },
            wishList:[],
            titles:[],
            imgs:[],
            infoIds:[]
        }
    },
    computed:{
        imgslen(){
            return this.imgs.length;
        }
    },
    methods:{
        jumptodetail(id){
            // console.log(id);
            this.$router.push({
                name:'details',query:{id}
            })
        },
        removemsg(index){
            var url="http://127.0.0.1:3000/use/msgremove"
            var obj={infoId:index}
            this.axios.get(url,{params:obj}).then(res=>{
                this.$router.go(0);
                this.$toast("已取消");
            }).catch(err=>{
                console.log(err);
            })
        },
        msg(){
            var url="http://127.0.0.1:3000/use/msgcollect"
            this.axios.get(url).then(res=>{
                // console.log(res.data);
                for(var i=0;i<res.data.length;i++){
                    this.wishList.push(res.data[i])
                    this.titles.push(res.data[i].title)
                    this.imgs.push("http://127.0.0.1:3000/img/index/"+res.data[i].colImg)
                    this.infoIds.push(res.data[i].infoId)
                }
                // console.log(this.wishList);
                // console.log(this.imgs);
                // console.log(this.infoIds);
            }).catch(err=>{
                console.log(err);
            })
        }
    },
    mounted(){
        this.msg();
    }
}
</script>

<style scoped>
    .title{
        font:18px simhei;
        color:#666;
        line-height:50px;
        border-bottom:1px solid #ccc;
    }
    .wish-list{
        line-height:3rem;
        min-height:3rem;
        text-align:center;
        margin:.3rem 0;
    }
    .header{
        position:relative;
        border-bottom:1px solid #ccc;
    }
    .wish-list .wishidx{
        position:absolute;
        font-size:.33rem;
        top:-5%;
        right:5%;
        color:red;
    }
    .wish-list .hstitle{
        position:absolute;
        top:-10%;
        right:5%;
        font-size:.33rem;
        color:red;
    }
    .wish-list .nohavewishlist{
        color:#999;
        font-size:.48rem;
    }
    .swiper{
        border-radius:.2rem;
    }
    .remove{
        position: absolute;
        top:78%;
        left:40%;
        font-size:.4rem;
        color: orangered;
        text-shadow:0 0 8px #000;
    }
</style>


