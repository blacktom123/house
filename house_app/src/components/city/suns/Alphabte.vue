<template>
    <ul class="list">
        <li class="item" 
            v-for="item of letters" 
            :key="item" 
            v-text="item"
            @click="handleLetterClick"
            @touchstart="handleTouchStart"
            @touchmove="handleTouchMove"
            @touchend="handleTouchEnd"
            :ref="item"
        >
        </li>
    </ul>
</template>

<script>
export default {
    props:{
        cities:Object
    },
    data(){
        return {
            cantouch:false
        }
    },
    computed:{
        letters(){
            const letters=[];
            for(var i in this.cities){
                letters.push(i);
            }
            return letters;
        }
    },
    methods:{
        handleLetterClick(e){
            this.$emit("change",e.target.innerText);
            // console.log(e.target.innerText);
        },
        handleTouchStart(){
            this.cantouch=true
        },
        handleTouchMove(e){
            if(this.cantouch){
                const startY=this.$refs['A'][0].offsetTop;
                // console.log(startY);
                const touchY=e.touches[0].clientY-60;
                // console.log(touchY);
                const index=Math.floor((touchY-startY)/20);
                // console.log(index);
                if(index>=0&&index<=this.letters.length){
                    this.$emit("change",this.letters[index]);
                }
            }
        },
        handleTouchEnd(){
            this.cantouch=false
        },
    }
}
</script>

<style scoped>
    .list{
        position:absolute;
        top:1.2rem;
        right:0;
        bottom:0;
        width:.4rem;
        display:flex;
        flex-direction:column;
        justify-content: center;
    }
    .item{
        text-align: center;
        line-height:.4rem;
        color:#4979db;
    }
</style>
