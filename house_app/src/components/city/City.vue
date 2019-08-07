<template>
    <div>
       <city-header></city-header>
       <city-list 
        :cities="cities" 
        :hot="hotCities"
        :letter="letter"
       ></city-list>
       <city-alphabet 
        :cities="cities" 
        @change="handleLetterChange"
       ></city-alphabet>
    </div>
</template>

<script>
import CityHeader from './suns/Header'
import CityList from './suns/List'
import CityAlphabet from './suns/Alphabte'
export default {
    data(){
        return {
            cities:{},
            hotCities:[],
            letter:""
        }
    },
    components:{
        CityHeader,
        CityList,
        CityAlphabet
    },
    methods:{
        getCityInfo(){
            this.axios.get('../../../static/mock/city.json').then(res=>{
                if(res.data.ret&&res.data.data){
                    const data=res.data.data
                    console.log(data);
                    this.cities=data.cities;
                    this.hotCities=data.hotCities;
                }
            })
        },
        handleLetterChange(letter){
            this.letter=letter;
        }
    },
    mounted(){
        this.getCityInfo();
    }
}
</script>

<style scoped>

</style>
