<template>
    <div class="list" ref="wrapper">
        <div>
            <div class="area">
                <div class="title border-topbottom">当前城市</div>
                <div class="button-list">
                    <div class="button-wrapper">
                        <div class="button">{{this.$store.state.city}}</div>
                    </div>
                </div>
            </div>
            <div class="area">
                <div class="title border-topbottom">热门城市</div>
                <div class="button-list">
                    <div @click="handleCityClick(item.name)" class="button-wrapper" v-for="item of hot" :key="item.id">
                        <div class="button">{{item.name}}</div>
                    </div>
                </div>
            </div>
            <div class="area" 
                v-for="(item,key) of cities" 
                :key="key"
                :ref="key"
            >
                <div class="title border-topbottom">{{key}}</div>
                <div class="item-list">
                    <div 
                        @click="handleCityClick(innerItem.name)" 
                        class="item border" 
                        v-for="innerItem of item" 
                        :key="innerItem.id" 
                        v-text="innerItem.name"></div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Bscroll from 'better-scroll'
export default {
    props:{
        cities:Object,
        hot:Array,
        letter:String
    },
    data(){
        return {

        }
    },
    methods:{
        handleCityClick(city){
            this.$store.commit("changeCity",city);
            this.$router.push('/')
        }
    },
    mounted(){
        this.scroll=new Bscroll(this.$refs.wrapper)
    },
    watch:{
        letter(){
            if(this.letter){
                const element=this.$refs[this.letter][0];
                this.scroll.scrollToElement(element)
            }
            // console.log(this.letter);
        }
    }
}
</script>

<style scoped>
    .list{
        position:absolute;
        top:1.2rem;
        left:0;
        right:0;
        bottom:0;
        overflow:hidden;
    }
    .title{
        line-height:.54rem;
        background:#eee;
        padding-left:.2rem;
        color:#666;
        font-size:.26rem;
    }
    .button-list{
        padding:.1rem;
        overflow:hidden;
        padding:.1rem .6rem .1rem .1rem;
    }
    .button-wrapper{
        float:left;
        width:33.33%;
    }
    .button{
        padding:.1rem;
        text-align:center;
        margin:.1rem;
        border:.02rem solid #ccc;
        padding:.1rem 0;
        border-radius:.06rem;
    }
    .item{
        line-height:.76rem;
        padding-left:.2rem;
    }
    .border{
        border-bottom:1px solid #ccc;
    }
</style>
