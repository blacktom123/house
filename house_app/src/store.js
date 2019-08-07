import Vue from 'vue'
import Vuex from 'vuex'
import createPersistedState from "vuex-persistedstate"

Vue.use(Vuex)
export default new Vuex.Store({
    plugins: [createPersistedState({
        storage: window.sessionStorage
    })],
    state:{
        city:"杭州",
        details:[],
        
    },
    mutations:{
        changeCity(state,city){
            state.city=city;
        },
        changeDetails(state,data){
            state.details=data
        }
    }
})
