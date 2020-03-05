<template>
  <ul>
    <p>{{ message }}</p>
    <li
      v-for="post in posts"
      :key="post.id">
      {{ post.title }} - {{ post.description }}
      <br>
    </li>
  </ul>
</template>

<script>
import { mapState, mapActions } from 'vuex'

export default {
  data() {
    return {
      message: "Hello from Post Component!"
    }
  },
  computed: mapState({
    posts: state => state.posts.all
  }),
  created () {
    this.$store.dispatch('posts/getAllPosts')
  }
}
</script>
