<template>
    <div class="index cover">
        <index-header></index-header>
        <index-find></index-find>
        <index-brand></index-brand>
        <index-recommend :hsList="hsList"></index-recommend>
    </div>
</template>
<script>
import IndexHeader from "./suns/Header"
import IndexFind from "./suns/Find"
import IndexBrand from './suns/Brand'
import IndexRecommend from './suns/Recommend'
export default {
    data(){
        return {
            hsList:[]
        }
    },
    components:{
        IndexHeader,
        IndexFind,
        IndexBrand,
        IndexRecommend,
    },
    mounted(){
        this.axios.get("http://127.0.0.1:3000/use/houseInfo").then(res=>{
            // console.log(res.data);
            this.hsList=res.data;
        });
    }
}
</script>
<style scoped>
    .index{
        margin:0 20px;
    }
    .cover::after{
        height:60px;
        content:"";
        display:block;
    }
</style>


