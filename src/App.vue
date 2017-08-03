<template>
  <div id="app">
    <img src="./assets/logo.png">
    <router-link to="A">
      <p>Component A</p>
    </router-link>
    <router-link to="B">
      <p>Component B</p>
    </router-link>
    <transaction name="fade">
      <router-view></router-view>
    </transaction>
  </div>
</template>

<script>
export default {
  name: 'app'
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.fade-enter-active, .fade-leave-active {
  transition: opacity 0.5;
}

</style>
