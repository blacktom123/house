<template>
    <div class="wish cover">
        <wish-header></wish-header>
        <wish-recommend></wish-recommend>
    </div>
</template>

<script>
import WishHeader from './suns/Header'
import WishRecommend from './suns/Recommend'
export default {
    data(){
        return {

        }
    },
    components:{
        WishHeader,
        WishRecommend,
    }
}
</script>

<style scoped>
    .wish{
        margin:0 20px;
    }
    .cover::after{
        height:60px;
        content:"";
        display:block;
    }
</style>


