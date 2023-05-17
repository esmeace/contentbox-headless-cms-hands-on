<script setup>
import HelloWorld from './components/HelloWorld.vue'
import BlogPosts from './components/BlogPosts.vue'
</script>

<template>
  <header>
    <img alt="Into the Box" class="logo" src="./assets/logo.svg" width="125" height="125" />

    <div class="wrapper">
      <HelloWorld msg="Web Development Blog" />
    </div>
  </header>

  <main>
    <Blog-Posts />
  </main>
</template>

<style scoped>
header {
  line-height: 1.5;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    flex-direction: column;
    place-items: center;
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }
}
</style>
