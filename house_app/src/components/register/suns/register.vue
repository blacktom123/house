<template>
    <div class="container">
        <mt-field class="userName" v-model="userName" placeholder="请填写用户名" ></mt-field>
        <mt-field class="phone" v-model="phone" placeholder="请输入手机号码" ></mt-field>
        <mt-field class="pwd" v-model="pwd" placeholder="请输入6-16位密码" type="password"></mt-field>
        <mt-button size="large" class="mybutton" @click="register">提交注册</mt-button>
    </div>
</template>
<script>
export default {
    data() {
        return {
            userName:"",
            phone:"",
            pwd:""
        }
    },
    methods: {
        register(){
            //1:获取用户名和密码
            var u = this.userName;
            var p = this.pwd;
            var ph=this.phone;
            //2:创建一个正则表达式
            //  字母数字下划3~12
        var phoneReg=/^1[3-9]\d{9}$/g;
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
        if(!phoneReg.test(ph)){
            this.$toast("手机格式不正确");
            return;
        }
        //5:发送ajax请求 axios
        var url = "http://127.0.0.1:3000/use/userRegister";
        var obj = {userName:u,userPwd:p,phone:ph};
        this.axios.get(url,{params:obj}).then(
            result=>{
            //1:判断服务器返回结果
            //2:code:>0 跳转login组件
            if(result.data.code > 0){
                this.$router.push("/Login");
            }else{
                this.$messagebox("提示","注册有误");
            }
            //4:code<0
        });
        }
    },
}
</script>
<style scoped>
    .container{
        text-align: center;
        margin: 0.24rem;
        margin-top:0.5rem;
    }
    .userName,.phone,.pwd{
        border-bottom: .01rem solid grey;
        margin-top:.48rem;
    }
    .mybutton{
        margin-top:1rem;
        background-color:#4979DB;
        color:#fff;
    }
</style>
