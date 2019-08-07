<template>
    <div class="home">
        <!-- 面板 -->
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="首页">
                <home-index></home-index>  
            </mt-tab-container-item>
            <mt-tab-container-item id="心愿单">
                <home-wish></home-wish>
            </mt-tab-container-item>
            <mt-tab-container-item id="看房行程">
                <div v-if="showhouse">
                    <div class="nologin">您尚未登录，请先点击登录</div>
                    <div class="login" @click="login">点击登录!</div>
                </div>
                <home-msg v-else></home-msg>
            </mt-tab-container-item>
            <mt-tab-container-item id="我">
                <home-mine></home-mine>
            </mt-tab-container-item>
        </mt-tab-container>
        <!-- 底部导航条 -->
        <mt-tabbar fixed v-model="active">
            <mt-tab-item id="首页" @click.native="change(0)">
                <tab-bar-icon
                    :selectedImage="require('../assets/index1.png')" 
                    :normalImage="require('../assets/index.png')"
                    :focused="picIndex[0].isSelected"
                ></tab-bar-icon>
                <div>首页</div>
            </mt-tab-item>
            <mt-tab-item id="心愿单" @click.native="change(1)">
                <tab-bar-icon
                    :selectedImage="require('../assets/xin1.png')" 
                    :normalImage="require('../assets/xin.png')"
                    :focused="picIndex[1].isSelected"
                ></tab-bar-icon>   
                <div>心愿单</div>
            </mt-tab-item>
            <mt-tab-item id="看房行程" @click.native="change(2)">
                <tab-bar-icon
                    :selectedImage="require('../assets/xingli1.png')" 
                    :normalImage="require('../assets/xingli.png')"
                    :focused="picIndex[2].isSelected"
                ></tab-bar-icon>   
                <div>看房行程</div>
            </mt-tab-item>
            <mt-tab-item id="我" @click.native="change(3)">
                <tab-bar-icon
                    :selectedImage="require('../assets/wo1.png')" 
                    :normalImage="require('../assets/wo.png')"
                    :focused="picIndex[3].isSelected"
                ></tab-bar-icon>   
                <div>我</div>
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>
<script>
import TabBarIcon from './TabBarIcon'
import HomeIndex from './index/Index'
import HomeWish from './wish/Wish'
import HomeMsg from './message/Msg'
import HomeMine from './mine/Mine'
export default {
    data(){
        return {
            showhouse:false,
            active:"首页",
            // 使用数组保存底部图片的状态
            picIndex:[
                {isSelected:true},
                {isSelected:false},
                {isSelected:false},
                {isSelected:false}
            ]
        }
    },
    components:{
        HomeIndex,
        HomeWish,
        HomeMine,
        HomeMsg,
        TabBarIcon
    },
    mounted(){
        this.goMine();
        this.change(sessionStorage.getItem("num"));
        if(!sessionStorage.getItem("num")){
            this.picIndex[0].isSelected=true;
        }
    },
    methods:{
        change(n){
            for(var i=0;i<this.picIndex.length;i++){
                if(n==i){
                    this.picIndex[i].isSelected=true;
                    sessionStorage.setItem("num",i);
                    if(i==2){
                        if(!sessionStorage.getItem("userId")){
                            this.showhouse=true;
                        }
                    }
                }else{
                    this.picIndex[i].isSelected=false;
                }
            }
        },
        goMine(){
            sessionStorage.getItem("num")=="0"?this.active="首页":
            sessionStorage.getItem("num")=="1"?this.active="心愿单":
            sessionStorage.getItem("num")=="2"?this.active="看房行程":
            sessionStorage.getItem("num")=="3"?this.active="我":this.active="首页";
        },
        login(){
            this.$router.push("/login")
        }
    },
}
</script>
<style scoped>
    /* 修改文字颜色 */
    .mint-tabbar>.mint-tab-item{
        color:#e1dfdf;
    }
    /* 选中后文字的颜色 */
    .mint-tabbar>.mint-tab-item.is-selected{
        background:transparent;
        color:#4979db;
    }
    .nologin{
        width:60%;
        margin:4.4rem auto 0;
        line-height:1.2rem;
        text-align:center;
        font-size:.36rem;
        color:#666;
    }
    .login{
        width:60%;
        margin:0 auto;
        line-height:1.2rem;
        font-size:.5rem;
        text-align:center;
        border-radius:.2rem;
        background:#4979db;
        color:#fff;
    }
</style>

