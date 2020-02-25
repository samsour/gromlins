<template>
  <div class="app-header">
    <factor-link path="/">Home</factor-link>
    <factor-link path="/page">Page</factor-link>
  </div>
</template>
<script>
  import { factorLink } from "@factor/ui"
  export default {
    components: {
      factorLink
    }
  }
</script>