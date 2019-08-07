<template>
<!--Message.vue-->
  <div class="itemstyle" >
    <div v-for="(item,i) of this.list.data" :key="i" class="rootstyle" >
      <div class="leftimgandtxt">
      <img :src="'http://127.0.0.1:3000/img/'+item.img"  class="imgstyle" />
      <div class="rightOfImg">
        <span class="title">{{item.title}}</span>
        <span class="subtitle">{{item.subtitle}}</span>
      </div>
    </div>
      <span class="sendtime">
        {{item.time}}
      </span>
    </div> 
   </div> 
</template>
<script>
  import { Lazyload } from 'mint-ui';
  import messagejson from "../../../../static/mock/messagelist.json"
  export default {
   data(){
    return {
       list:messagejson
     }
   },
 }  
</script>
<style scoped>
/*消息组件外观*/
 .itemstyle{
   padding:5px;
   border-bottom:1px solid #d9d9d9;
   margin-bottom: 1rem;
 }
/*1:根元素样式*/
.rootstyle{
  display:flex;
  /*水平方向两端对齐*/
  justify-content:space-between;
  /*垂直方向居中*/
  align-items:center;
  padding:.4rem .3rem;
  margin: .3rem .3rem;
  box-shadow: 0rem .1rem 1rem 0rem rgb(0,0,0,.1);
  border-radius: .24rem;
}
/*2:图片与文本样式*/
.leftimgandtxt{
   display:flex;
}
/*3:图片样式*/
.imgstyle{
  width:50px;
  height:50px;
  border-radius: 100px;
}
/*4:图片右侧文本*/
.rightOfImg{
   display:flex;
   flex-direction:column;
   justify-content:center;
   margin-left:7px;
}
/*主标题*/
.title{ 
  color:#000;font-size:17px;}
/*子标题*/
.subtitle{
  color:gray;margin-top:4px;
}
/*发送时间*/
.sendtime{
  color:gray;
}
.itemstyle[data-v-22eb799e]{
    border-bottom:none;
  }
</style>