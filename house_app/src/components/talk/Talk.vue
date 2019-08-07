<template>
    <div>
        <div class="header">
           <div class="header-left" @click="back">
               <img src="../../assets/fanhui.png" alt="">
           </div>
           <div class="header-right">房东</div>
        </div>
        <div class="b-msg">
            <ul >
                <li v-for="(item,i) of list"  :key="i">
                    <div>
                        <div>
                        <span>{{item.contents}}</span><img src="http://127.0.0.1:3000/img/a_7.png" alt="">
                        </div>
                    </div>
                </li>
            </ul>
        </div>
            <div class="input-enter">
                <div class="enter-box">
                    <input id="enter" type="text" v-model="message" @keyup.13="dealMessage">
                    <button type="reset" class="submit" @click="dealMessage">发送</button> 
                </div>
            </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            list:[],
            message:''
        }
    },
    mounted() {
        this.loadmsg();
    },
    methods: {
        back(){
            this.$router.go(-1);
        },
        dealMessage(){
                if(this.message!=""){
                var msg=this.message;
                var msg2={contents:msg};
                this.list.push(msg2);
                console.log(this.list)
                var id=sessionStorage.getItem("userId");
                var url="http://127.0.0.1:3000/use/addmsg";
                var obj={userId:id,contents:msg};
                this.axios.get(url,{params:obj}).then(result=>{
                    console.log(result);
                    
                })
                this.message='';
                }
        }, 
        loadmsg(){
           var id=sessionStorage.getItem("userId");
            var url="http://127.0.0.1:3000/use/msgGoOut";
            var obj={userId:id};
            this.axios.get(url,{params:obj}).then(result=>{
                this.list=result.data;
                console.log(this.list);
            })
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
    
    .input-enter{
        position: absolute;
        bottom: 0px;
        background-color:#4979DB;
        width: 100%;
    }
    .enter-box{
        display: flex;
        align-items: center;
    }
    #enter{
        margin:.2rem .2rem;
        padding:0rem .2rem;
        width: 100%;
        height:.7rem;
        border-radius: 30px;
        flex: 1;
    }
    .submit{
        padding:.1rem .1rem;
        margin:0rem .2rem;
        background: #4979DB;
        color:white;
    }
    .b-msg>ul{
        height: 100%;
        position: absolute;
        right:0px;
        margin-top:.25rem;
    }
    .b-msg>ul>li>div{
        float: right;
        margin-right:.2rem;
    }
     .b-msg>ul>li>div>div{
        display: flex;
        align-items: center;
        margin:.2rem 0rem;
     }
    .b-msg>ul>li>div>div>span{
        height:.3rem;
        padding: .18rem .5rem;
        border-radius: 1rem;
        background-color:#4979DB;
        font-weight: bolder;
    }
    .b-msg>ul>li>div>div>img{
        width:.68rem;
        height:.68rem;
        border-radius:10px;
        margin-left:.3rem;
    }
</style>
