import axios from 'axios'

// initial state
const state = {
  all: []
}

// getters
const getters = {}

// actions
const actions = {
  getAllPosts({ commit }) {
    axios.get("/v1/posts").then(response => {
      commit('setPosts', response.data);
    });
  }
}

const mutations = {
  setPosts(state, posts) {
    state.all = posts;
  }
}

export default {
  namespaced: true,
  state,
  getters,
  actions,
  mutations
}
