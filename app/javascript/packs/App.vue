<template>
  <div id="app">
    <p>{{ message }}</p>
    <Post />
  </div>
</template>

<script>
import Post from './components/Post'

export default {
  components: { Post },
  data() {
    return {
      message: "Hello from App Component!"
    }
  },
  created () {
    console.log(this.$store)
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
