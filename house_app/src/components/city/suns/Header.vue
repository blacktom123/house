<template>
    <div class="header">
        城市选择
        <router-link to="/">
            <img src="../../../assets/fanhui.png" alt="">
        </router-link>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
    .header{
        position:relative;
        height:60px;
        line-height:60px;
        overflow: hidden;
        text-align:center;
        background:#4979db;
        color:#fff;
        font-size:20px;
    }
    .header img{
        width:20px;
        color:#fff;
        position: absolute;
        left:-55%;
        top:-5%;
    }
</style>
