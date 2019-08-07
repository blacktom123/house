<template>
     <div class="page-wrap">
       <mt-navbar fixed v-model="active" >
          <mt-tab-item id="message" @click.native="changeState(0)">
          <div class="searchdiv"  :focused="currentIndex[0].isSelect">
            <p>系统信息</p>
          </div>
          </mt-tab-item>
          <mt-tab-item id="PersonalMsg"  @click.native="changeState(1)">
              <div class="searchdiv" :focused="currentIndex[1].isSelect">
                <p>私信</p>
              </div>
            </mt-tab-item> 
       </mt-navbar>
        <mt-tab-container v-model="active">
          <mt-tab-container-item id="message">
            <message>
            </message>
          </mt-tab-container-item>
          <mt-tab-container-item id="PersonalMsg">
            <personalmsg>
            </personalmsg>
          </mt-tab-container-item>
        </mt-tab-container>
     </div>
</template>
<script>
//1:导入顶部导航条子组件
import Message from "./suns/Message"
import PersonalMsg from "./suns/PersonalMsg"
//3:调用顶部导航条子组件
export default {
     data(){
       return {
       //子组件id
       active:"message",
         currentIndex:[
          {isSelect:true},
           {isSelect:false}
        ]
       //使用数据保存图片焦点状态
       }
     },//2:注册顶部导航条子组件
     components:{
      "message":Message,
      "personalmsg":PersonalMsg
     },
      methods:{
       changeState(n){
         //1:n当前按钮下标
         //2:创建循环数据
          for(var i=0;i<this.currentIndex.length;i++){
          //3:如果当前下标与参数下标一致
          if(n==i){
            this.currentIndex[i].isSelect=true;
          }else{
            this.currentIndex[i].isSelect=false;
          }
         }
       },
     },  

}  
</script>
<style scoped>

.page-wrap{
 overflow:auto;/*溢出显示轮动条*/
 /*底部导航条高度*/
 padding-bottom:60px;
 margin-top:-10px;
} 
  .page-head{
    display:flex;/*弹性布局*/
    position:fixed;/*固定定位*/
    z-index:999;/*显示上面*/
    width:100%;/*与父元素相同*/
    /*与父元素相同*/
  justify-content:space-between;
    /*垂直居中*/
    align-items:center;
    color:#3e3a39;
    padding-right:7px;
    height:48px;
    background-color:#fff;
    font-size:16px;
    font-weight: 700;
  }
  .searchdiv{
    display:flex;
    align-items:center;/*垂直居中*/
    height:48px;
    text-align: center;
    border-bottom: 2px solid #9e9e9e;
    font-size:.36rem;
  }
   .mint-tabbar>.mint-tab-item.is-selected .searchdiv{
       border-bottom: 2px solid #03a9f4;
    }
  p{
    width: 100%;
  }
  .mint-tab-container{
    width: 100%;
    position: absolute;
    top: 100%; 
  }
  .mint-tab-item{
    padding: 0;
  }
</style>