<template>
    <div class="contianer">
        <div class="header">
            <div class="login-enter" @click="changeLogin">登录/注册</div>
            <div class="logout" @click="logout"></div>
            <div class="message">
                <div class="message-item" v-for="(elem,i) of lists" :key="i">
                    <div>
                        <div>{{elem.num}}</div>
                        <div>{{elem.name}}</div>
                    </div>
                    <div>{{elem.line}}</div>
                </div>
            </div>
        </div>
        <div class="use-method">
            <div v-for="(item,i) of imgs" :key="i">
                <img :src="'http://127.0.0.1:3000/img/'+item.img_url" alt="">
                <div>{{item.name}}</div>
            </div>
        </div>
        <div class="mymoney">
            <table></table>
            <h3>我的钱包</h3>
            <div class="moneybag">
                <div v-for="(item,i) of mymoney" :key="i">
                    <img :src="'http://127.0.0.1:3000/img/'+item.img_url" alt="">
                    <div>{{item.name}}</div>
                </div>
            </div>
        </div>
        <div class="publish">
            <table></table>
            <h3>我的发布</h3>
            <div class="image-logo"></div>
            <div>
                <mt-button class="rent-btn">我要出租</mt-button>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            lists:[
                {num:20,name:'关注',line:"|"},
                {num:10,name:'联系',line:"|"},
                {num:10,name:'收藏',line:"|"},
                {num:30,name:'粉丝',line:""}
            ],
            imgs:[
                {img_url:"time-foot.png",name:"浏览足迹"},
                {img_url:"Customer-service.png",name:"在线客服"},
                {img_url:"Renting.png",name:"我的租房"},
                {img_url:"other.png",name:"其它"}
            ],
            mymoney:[
                {img_url:"cashCoupon.png",name:"代金券"},
                {img_url:"integral.png",name:"积分"},
                {img_url:"bankCard.png",name:"银行卡"},
                {img_url:"balance.png",name:"余额"}
            ]
        }
    },
    mounted() {
        this.changeName();
    },
    methods: {
        changeLogin(){
            this.$router.push({path:"/Login"});
        },
        changeName(){
            var n=document.getElementsByClassName("login-enter")[0];
            var uname=sessionStorage.getItem("uname");
            var logout=document.getElementsByClassName("logout")[0];
            if(uname){
                n.innerHTML=uname;
                logout.innerHTML=`退出登录`
            }else if(uname=="null"){
                n.innerHTML="登录/注册";
            }
        },
        logout(){
            sessionStorage.clear();
            var n=document.getElementsByClassName("login-enter")[0];
            n.innerHTML="登录/注册";
            this.$toast("退出成功！")
            var logout=document.getElementsByClassName("logout")[0];
            logout.innerHTML="";
        }
    },
}
</script>
<style scoped>
    .contianer{
        height:100%;
        overflow: hidden;
        margin-bottom:1.1rem;
    }
    .header{
        margin-bottom: .8rem;
    }
    .message{
        display: flex;
        justify-content: space-around;
        margin-left: .4rem;
    }
    .message-item{
        display: flex;
        text-align: center;
    }
    .message-item>div:nth-child(1){
        margin-right:.5rem;
        font-size:.12rem;
    }
    .message-item>div:nth-child(1)>div:nth-child(1){
        margin-bottom: .2rem;
        font-size:.6rem;
    }
    .message-item>div:nth-child(2){
        line-height: .8rem;
        color:#EBE8E8;
        font-size:.6rem;
    }
    .login-enter{
        color:#4979DB;
    }
    .login-enter,.logout{
        font-size: .4rem;
        margin: .8rem 0rem .88rem .6rem;
        font-family: "黑体";
        font-weight: bolder;
        display:inline-block;
    }
    .moneybag,.use-method{
        display: flex;
        justify-content: space-around;
        
    }
    .use-method{
        height: 2rem;
        margin: 0rem .2rem .2rem .2rem;
        box-shadow: 0rem .1rem 1rem 0rem rgb(0,0,0,.1);
        border-radius: .24rem;
    }
    .moneybag>div,.use-method>div{
        margin-top: .3rem;
    }
    .use-method>div:nth-child(2){
        margin-top:.4rem;
    }
    .moneybag>div:nth-child(2)>img,.use-method>div:nth-child(2)>img{
        margin-left: .1rem;
    }
    .moneybag>div>div,.use-method>div>div{
        margin-top:.2rem;
        text-align: center;
    }
    .mymoney{
        margin: 0rem .2rem .2rem .2rem;
        height: 3.4rem;
        box-shadow: 0rem .1rem 1rem 0rem rgb(0,0,0,.1);
        border-radius: .24rem;
    }
    .publish>h3,.mymoney>h3{
        font-size:.6rem;
        margin: .4rem .32rem .2rem .32rem;
    }
    .publish>h3{
        margin-top:.4rem;
    }
    .publish{
        margin: 0rem .2rem .2rem .2rem;
        height: 7.5rem;
        box-shadow: 0rem .1rem 1rem 0rem rgb(0,0,0,.1);
        border-radius: .24rem;
    }
    .publish>.image-logo{
        border-radius: .24rem;
        margin:0rem .2rem;
        background: url('../../assets/k1412980934b2ae7a60133ed85fff4deba3d19b.png') no-repeat;
        height: 4.46rem;
    }
    .rent-btn{
        margin:.5rem 0rem;
        width:5.18rem;
        border-radius: 30px;
        background-color:#4979DB;
        color:#fff;
    }
    .contianer>.publish>div:last-child{
        text-align: center;
    }
</style>
