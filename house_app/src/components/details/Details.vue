<template>
    <div class="detail">
        <router-link to="/">
            <div class="img-wrapper">
                <img class="fanhui" src="../../assets/fanhui.png" alt="">
            </div>
        </router-link>
        <!-- 分页 -->
        <swiper class="swiper" :options="swiperOption" v-if="this.swiperList.length">
            <swiper-slide v-for="(item,index) of this.swiperList" :key="index">
                <div class="swiper-img-wrapper">
                    <img class="swiper-img" :src="item" alt="">
                </div>
            <div class="imgidx">{{index+1}}/4</div>
            </swiper-slide>
            <!-- <div class="swiper-pagination"  slot="pagination"></div> -->
        </swiper>
        <div class="title">{{detail.title}}</div>
        <div class="mingxi">
            <div class="mingxiitem">
                <div class="mingxiitem1">{{detail.price}}元/月</div>
                <div class="mingxiitem2">押一付一</div>
            </div>
            <div class="mingxiitem line">|</div>
            <div class="mingxiitem">
                <div class="mingxiitem1">一室一厅一卫</div>
                <div class="mingxiitem2">户型</div>
            </div>
            <div class="mingxiitem line">|</div>
            <div class="mingxiitem">
                <div class="mingxiitem1">{{detail.size}}</div>
                <div class="mingxiitem2">面积</div>
            </div>
        </div>
        <div class="htype1">
            <span class="htypemsg">出租类型</span>{{detail.htype}}
        </div>
        <div class="htype2">
            <span class="htypemsg">房屋简介</span>{{detail.contents}}
        </div>
        <div class="addtowishlist" @click="addtowishlist(detail.infoId)">
            <div>
                加入我的心愿单
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            detail:{},
            swiperOption:{
                // pagination:'.swiper-pagination',
                loop:true,
                observeParents:true,
                observer:true
            },
            swiperList:[]
        }
    },
    created(){
        var lid=this.$route.query.id;
        var data=this.$store.state.details;
        // console.log(data);
        // console.log(data[lid-1]);
        this.detail=data[lid-1];
        // console.log(this.detail);
        for(let i=1;i<=4;i++){
            var imgUrl="http://127.0.0.1:3000/img/index/"+this.detail[`img${i}`];
            this.swiperList.push(imgUrl);
        }
        // console.log(this.swiperList);
    },
    methods:{
        addtowishlist(data){
            // console.log(data);
            var url="http://127.0.0.1:3000/use/addcollect";
            var title=this.detail.title;
            var img=this.detail.img1;
            console.log(data,title,img);
            var obj={infoId:data,title:title,colImg:img};
            this.axios.get(url,{params:obj}).then(res=>{
                if(res.data.code==-1){
                    this.$toast(`${res.data.msg}`)
                }else{
                    this.$toast("收藏成功!")
                }
            }
            ).catch()
        }
    }
}
</script>

<style scoped>
    .swiper-img-wrapper{
        width:100%;
    }
    .swiper-img{
        width:100%;
    }
    .detail{
        position:relative;
    }
    .fanhui{
        width:.36rem;
    }
    .img-wrapper{
        background:rgba(0,0,0,.3);
        position:absolute;
        width:.8rem;
        line-height:.5rem;
        text-align:center;
        border-radius:.2rem;
        top:1.6%;
        left:1%;
        z-index:9
    }
    .imgidx{
        background:rgba(0,0,0,.3);
        width:.86rem;
        line-height:.36rem;
        text-align: center;
        border-radius:.1rem;
        position:absolute;
        right:.3rem;
        top:4.4rem;
        z-index:9;
        color:#fff;
    }
    .title{
        border-bottom:1px solid #ccc;
        line-height:1.6rem;
        font-size:.48rem;
        text-align: center;
        color:orangered;
        margin:0 .4rem;
    }
    .mingxi{
        margin:0 .4rem;
        height:2rem;
        border-bottom:1px solid #ccc;
        display:flex;
        justify-content:space-around;
    }
    .line{
        font-size:.8rem;
        color:#ccc;
    }
    .mingxiitem{
        display:flex;
        flex-direction:column;
        justify-content:center
    }
    .mingxiitem1{
        font-size:.36rem;
        color:#4979db;
        margin-top:.15rem;
    }
    .mingxiitem2{
        font-size:.28rem;
        color:#666;
        margin-top:.15rem;
    }
    .htype1{
        margin:0 .2rem;
        padding:0 .2rem;
        line-height:2rem;
        font-size:.3rem;
        box-sizing: border-box;
        color:#666;
        border-bottom:1px solid #ccc;
    }
    .htype2{
        margin:0 .2rem;
        padding:.5rem .2rem;
        height:2rem;
        font-size:.3rem;
        box-sizing: border-box;
        color:#666;
        border-bottom:1px solid #ccc;
    }
    .htypemsg{
        display:inline-block;
        width:1.8rem;
        background:#4979db;
        font-size:.3rem;
        text-align: center;
        line-height:.6rem;
        border-radius: .2rem;
        color:#fff;
        margin-right:.32rem;
    }
    .addtowishlist{
        background:#4979db;
        margin:0 .2rem;
        width:90%;
        font-size:.44rem;
        line-height:1rem;
        text-align:center;
        margin:.5rem auto;
        color:#fff;
        border-radius:.2rem;
    }
</style>
