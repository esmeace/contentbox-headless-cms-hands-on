<script setup>
defineProps({
  msg: {
    type: String,
    required: true
  }
})
</script>

<template>
  <div class="greetings">
    <h1 class="green">{{ msg }}</h1>
    <h2>
      Read about the latest tools, technologies, and news of web development. 
    </h2>
  </div>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
  top: -10px;
}

h2 {
  font-size: 1.2rem;
}

.greetings h1,
.greetings h2 {
  text-align: center;
}

</style>
