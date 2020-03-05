import Vue from 'vue/dist/vue.esm'
import Vuex from 'vuex'
import posts from './modules/posts'

Vue.use(Vuex)


export default new Vuex.Store({
  modules: {
    posts
  }
});
