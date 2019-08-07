<template>
  <div id="app">
      <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>
 
<style>
.mint-cell-wrapper {
    background-image:none !important;
}
  .mint-tab-container {
    overflow: visible;
    }
* { touch-action: none; }
</style>
