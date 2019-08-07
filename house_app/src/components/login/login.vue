<template>
    <div  class="login_container">
        <h2>欢迎您使用租房客</h2>
        <div class="img-wrapper" @click="back">
            <img class="fanhui" src="../../assets/fanhuilan.png" alt="">
        </div>
        <div>
        <mt-field class="user_input" v-model="uname"  placeholder="请输入用户名" ></mt-field>
        </div>
        <div>
        <mt-field class="pwd_input" v-model="upwd"  placeholder="请输入密码" type="password" ></mt-field>
        </div>
        <mt-button class="mybutton" type="primary" @click="login">登录</mt-button>
        <div class="userRegister" @click="register">注册</div>
        <div class="otherLogin">
            <span><img :src="require('../../assets/QQ.png')" alt=""></span>
            <span><img :src="require('../../assets/weixin.png')" alt=""></span>
            <span><img :src="require('../../assets/weibo.png')" alt=""></span>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            upwd:""
        }
    },
    methods: {
        back(){
            this.$router.go(-1)
        },
        login(){
            //1:获取用户名和密码
            var u = this.uname;
            var p = this.upwd;
            //2:创建一个正则表达式
            //  字母数字下划3~12
        var reg = /^[a-z0-9_]{3,12}$/i;
            //3:验证用户名 出错提示 53
            if(!reg.test(u)){
            this.$toast("用户名格式不正确");
            return;
            }
            //4:验证密码   出错提示
        if(!reg.test(p)){
            this.$toast("密码格式不正确");
            return;
        }
        //5:发送ajax请求 axios
        var url = "http://127.0.0.1:3000/use/login";
        var obj = {uname:u,upwd:p};
        this.axios.get(url,{params:obj}).then(
            result=>{
            //1:判断服务器返回结果
            //2:code:>0 跳转Home1组件
            if(result.data.code > 0){
                sessionStorage.setItem("uname",u);
                sessionStorage.setItem("userId",result.data.userId);
                this.$toast("登录成功");
                this.$router.push("/");
                
            }else{
                this.$messagebox("提示","用户名或密码有误");
            }
            //3:创建xz/Home1.vue组件
            //4:code<0
        });
        },
        register(){
            this.$router.push({path:"/UserRegister"})
        }
    },
}
</script>
<style scoped>
    .login_container{
        margin-top:3rem;
        text-align: center;
    }
    .login_container h2{
        font-size:.6rem;
    }
    .user_input{
        margin-top:2rem;
    }
    .user_input,.pwd_input{
        text-align: center;
        margin-left:1.1rem;
        margin-right:1.1rem;
        border-bottom: 1px solid gray;
    }
    .mybutton{
        margin-top:1rem;
        width:5.18rem;
        border-radius: 30px;
        background-color:#4979DB;
    }
    .userRegister{
        margin-top:0.48rem;
        color:#4979DB;
    }
    .otherLogin>span{
        margin:0.4rem;
        cursor: pointer;
    }
    .otherLogin{
        margin-top:2rem;
    }
    .img-wrapper{
        width:10%;
        line-height:.4rem;
        position:fixed;
        top:.3rem;
        left:.08rem;
    }
    .fanhui{
        width:60%;
    }
</style>


