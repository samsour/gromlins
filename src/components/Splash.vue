<template>
  <div class="splash">
    <h1>{{text}}</h1>
  </div>
</template>
<script>
  export default {
    props: {
      text: { type: String, default: "" }
    }
  }
</script>