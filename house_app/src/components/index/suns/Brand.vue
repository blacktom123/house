<template>
    <div class="brand">
        <p class="brand-title">品牌公寓</p>
        <swiper class="swiper" :options="swiperOption" v-if="this.swiperList.length">
            <swiper-slide v-for="item of this.swiperList" :key="item.id">
                <div class="swiper-img-wrapper">
                    <img class="swiper-img" :src="item.imgUrl" alt="">
                </div>
                <p class="desc">{{item.desc}}</p>
            </swiper-slide>
            <div class="swiper-pagination"  slot="pagination"></div>
        </swiper>
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
            swiperList:[
                {id:"0001",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563897216162&di=c90c0e1b2bcacff81f735a58591b1681&imgtype=0&src=http%3A%2F%2Fimg.danews.cc%2Fupload%2Fdoc%2F20190623%2F5d0f9ff0441b0.png",desc:"彩虹小区"},
                {id:"0002",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563897160337&di=9f32c21ff85619d0e4c524962aa06df1&imgtype=0&src=http%3A%2F%2F01.minipic.eastday.com%2F20170815%2F20170815114049_0016122dcd2e4e5d52cb80a1697b5e31_1.jpeg",desc:"乐安居好房"},
                {id:"0003",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563897194200&di=b001e1096fab7a5557b081f0fdcfe2a6&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F391%2Fw690h501%2F20180904%2Fff6N-hiqtcan8127216.jpg",desc:"明月蜗居"},
                {id:"0004",imgUrl:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563897110113&di=493d80bfe7142f2b2ddf001568be22a5&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171031%2F5708b3d8ce5d44df9b31455467469567.jpeg",desc:"单身独栋楼"},
            ]
        }
    }
}
</script>
<style scoped>
    /* .brand >>> .swiper-pagination-bullet-active{
        background:#fff;
    } */
    .brand-title{
        font:16px simhei;
        font-weight:bold;
    }
    .swiper{
        margin:10px 0;
        border-radius:.2rem;
    }
    .swiper-img-wrapper{
        height:150px;
        overflow:hidden;
    }
    .swiper-img{
        width:100%;
        height:150px;
        position:relative;
    }
    .desc{
        color:#fff;
        text-shadow:5px 5px 5px #000;
        margin-left:20px;
        font-size:20px;
        position:absolute;
        right:10px;
        bottom:20px;
    }
</style>

