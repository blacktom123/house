<template>
    <div class="recommend">
        <p class="recommend-title">推荐好房</p>
         <ul class="recommend-ul">
             <li class="item" v-for="item of recommendList" :key="item.id">
                 <div class="item-img-wrapper">
                    <img class="item-img" :src="item.imgUrl" alt="">
                 </div>
                 <div class="item-right">
                     <p class="item-title">{{item.title}}</p>
                     <p class="item-desc">{{item.desc}}</p>
                     <p class="item-price">￥{{item.price}}/月</p>
                 </div>
             </li>
         </ul>
    </div>
</template>
<script>
export default {
    data(){
        return {
            swiperOption:{
                pagination:'.swiper-pagination',
                loop:true,
            },
            recommendList:[
                {id:"0001",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562781562335&di=757d2cc490403839165911fe46bab745&imgtype=0&src=http%3A%2F%2Fpic1.shejiben.com%2Fcase%2F2013%2F12%2F18%2F20131218172506-29faf580.jpg",title:"西溪湿地好房源",desc:"彩虹小区，拎包入住",price:1998},
                {id:"0002",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562781562335&di=757d2cc490403839165911fe46bab745&imgtype=0&src=http%3A%2F%2Fpic1.shejiben.com%2Fcase%2F2013%2F12%2F18%2F20131218172506-29faf580.jpg",title:"西溪湿地好房源",desc:"彩虹小区，拎包入住",price:1998},
                {id:"0003",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562781562335&di=757d2cc490403839165911fe46bab745&imgtype=0&src=http%3A%2F%2Fpic1.shejiben.com%2Fcase%2F2013%2F12%2F18%2F20131218172506-29faf580.jpg",title:"西溪湿地好房源",desc:"彩虹小区，拎包入住",price:1998},
                {id:"0004",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562781562335&di=757d2cc490403839165911fe46bab745&imgtype=0&src=http%3A%2F%2Fpic1.shejiben.com%2Fcase%2F2013%2F12%2F18%2F20131218172506-29faf580.jpg",title:"西溪湿地好房源",desc:"彩虹小区，拎包入住",price:1998},
                {id:"0005",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562781562335&di=757d2cc490403839165911fe46bab745&imgtype=0&src=http%3A%2F%2Fpic1.shejiben.com%2Fcase%2F2013%2F12%2F18%2F20131218172506-29faf580.jpg",title:"西溪湿地好房源",desc:"彩虹小区，拎包入住",price:1998},
                {id:"0006",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562781562335&di=757d2cc490403839165911fe46bab745&imgtype=0&src=http%3A%2F%2Fpic1.shejiben.com%2Fcase%2F2013%2F12%2F18%2F20131218172506-29faf580.jpg",title:"西溪湿地好房源",desc:"彩虹小区，拎包入住",price:1998},
                {id:"0007",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562781562335&di=757d2cc490403839165911fe46bab745&imgtype=0&src=http%3A%2F%2Fpic1.shejiben.com%2Fcase%2F2013%2F12%2F18%2F20131218172506-29faf580.jpg",title:"西溪湿地好房源",desc:"彩虹小区，拎包入住",price:1998},
                {id:"0008",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562781562335&di=757d2cc490403839165911fe46bab745&imgtype=0&src=http%3A%2F%2Fpic1.shejiben.com%2Fcase%2F2013%2F12%2F18%2F20131218172506-29faf580.jpg",title:"西溪湿地好房源",desc:"彩虹小区，拎包入住",price:1998},
            ]
        }
    }
}
</script>
<style scoped>
    .recommend-title{
        font:16px simhei;
        margin-top:20px;
        color:#999;
    }
    /* .recommend-ul{
        margin:10px 0;
    } */
    .item{
        display:flex;
        padding:10px 0;
        border-bottom:1px solid #ccc;
    }
    .item-img-wrapper{
        float:left;
        width:25%;
        border-radius:10px;
        overflow:hidden;
    }
    .item-img{
        width:100%;
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
    }
    .item-desc{
        font-size:14px;
        color:#666;
    }
    .item-price{
        color:#0aa1ed;
    }
</style>

