<template>
    <div>
       <div class="header">
           <div class="header-left" @click="back">
               <img src="../../assets/fanhui.png" alt="">
           </div>
           <div class="header-right">注册</div>
       </div>
       <Register></Register>
    </div>
</template>
<script>
import register from './suns/register'
export default {
    data(){
        return{

        }
    },
    components:{
        "Register":register
    },
    methods: {
        back(){
            this.$router.go(-1);
        }
    },

}
</script>
<style scoped>
    .header-left img{
         width:20px;
        color:#fff;
        position:relative;
        left:-55%;
        top:-5%;
    }
    .header{
       display: flex;
       line-height:1rem;
       background-color:#4979DB;
       padding:0rem .24rem ;
    }
    .header-left{
        float: left;
        width: .1rem;
    }
    .header-right{
        float: right;
        flex:1;
        text-align: center;
        color:#fff;
        font-size: .32rem;
    }
</style>

