<template>
    <div class="find">
        <ul class="find-ul">
            <li>
                <img src="../../../assets/fangzi.png" alt="">
                <p>整租</p>
            </li>
            <li>
                <img src="../../../assets/xuexiao-.png" alt="">
                <p>合租</p>
            </li>
            <li>
                <img src="../../../assets/jiudian.png" alt="">
                <p>品牌公寓</p>
            </li>
            <li>
                <img src="../../../assets/jituanzhidu.png" alt="">
                <p>短租</p>
            </li>
            <li>
                <img src="../../../assets/xuexiaoxiaoyuanwangxinwenzixunfabushenpibiao.png" alt="">
                <p>记录</p>
            </li>
        </ul>
        <div class="find-img-wrapper">
            <img class="find-img" src="../../../assets/01.png" alt="">
        </div>
        
    </div>
</template>
<script>
export default {
    data(){
        return {
            
        }
    }
}
</script>
<style scoped>
    .find{
        min-height:40px;
        /* border:1px solid red; */
    }
    .find-ul{
         display:flex;
        justify-content:space-between;
        margin:20px 0;
    }
    .find-ul li{
        width:15%;
        overflow: hidden;
        text-align:center;
    }
    .find-ul li{
        font-size:12px;
    }
    .find-ul li img{
        width:70%;
        margin-bottom:10px;
    }
    .find-img-wrapper{
        margin:20px 0;
        border-radius:10px;
        overflow:hidden;
        min-height:10px;
        box-shadow: 0rem .1rem 1rem 0rem rgb(0,0,0,.1);
    }
    .find-img{
        width:100%;
    }
</style>


