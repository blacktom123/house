<template>
    <div class="recommend">
        <p class="recommend-title">推荐好房</p>
         <ul class="recommend-ul">
            <li class="item" v-for="item of hsList" :key="item.infoId" @click="goDetails(item.infoId)">
                <div class="item-img-wrapper">
                    <img class="item-img" :src="'http://127.0.0.1:3000/img/index/'+item.img1" alt="">
                </div>
                <div class="item-right">
                    <p class="item-title">{{item.title}}</p>
                    <p class="item-desc">{{item.contents}}</p>
                    <p class="item-price">￥{{item.price}}/月</p>
                </div>
            </li>
         </ul>
    </div>
</template>
<script>
export default {
    props:{
        hsList:Array
    },
    data(){
        return {
            swiperOption:{
                pagination:'.swiper-pagination',
                loop:true,
            }
        }
    },
    methods:{
        goDetails(id){
            // console.log(id);
            this.$router.push({
                name:'details',query:{id}
            }),
            this.$store.commit("changeDetails",this.hsList)
        }
    },
}
</script>
<style scoped>
    .recommend-title{
        font:16px simhei;
        font-weight:bold;
        margin-top:10px;
    }
    /* .recommend-ul{
        margin:10px 0;
    } */
    .item{
        display:flex;
        padding:10px 0;
        border-bottom:1px solid #ddd;
    }
    .item-img-wrapper{
        float:left;
        width:35%;
        border-radius:10px;
        overflow:hidden;
    }
    .item-img{
        width:100%;
        height:100%;
    }
    .item-right{
        float:left;
        display:flex;
        flex-direction:column;
        justify-content: space-around;
        margin-left:15px;
    }
    .item-title{
        font-size:14px;
        color:orangered;
    }
    .item-desc{
        font-size:12px;
        color:#999;
        margin-top:5px;
    }
    .item-price{
        color:#0aa1ed;
        margin-top:5px;
    }
</style>

