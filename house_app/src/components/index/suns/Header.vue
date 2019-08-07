<template>
    <div class="header">
        <div class="header-left">
            <router-link to="/city" class="changeCity">
                {{this.$store.state.city}}<span class="iconfont icon-jiantouxia"></span>
            </router-link>
        </div>
        <div class="header-input">
            <span class="iconfont icon-fangdajing"></span>
            小区、商圈、地铁站
        </div>
        <div class="header-right">
            <span class="iconfont icon-kefu"></span>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .header{
        display:flex;
        line-height:50px;
        /* background:#eee; */
        border-bottom:1px solid #eee;
    }
    .header-left{
        float:left;
    }
    .icon-jiantouxia{
        font-size:12px;
        margin-left:2px;
    }
    .header-input{
        flex:1;
        background:#F5F6F8;
        margin:0 20px;
        margin-top:10px;
        height:30px;
        line-height:30px;
        border-radius:20px;
        color:#999;
    }
    .icon-fangdajing{
        margin:0 3px 0 14px;
    }
    .header-right{
        float:right;
    }
    .icon-kefu{
        font-size:26px;
    }
    .changeCity{
        color:#000;
    }
</style>


