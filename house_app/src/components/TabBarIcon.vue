<template>
    <img 
        class="imgStyle"
        slot="icon"
        :src="focused?selectedImage:normalImage" alt="">
</template>

<script>
export default {
    props:{
        focused:false,
        selectedImage:{default:""},
        normalImage:{default:""}
    },
    data(){
        return {
           
        }
    }
}
</script>

<style scoped>
    .imgStyle{
        width:30px;height:30px;
    }
</style>
