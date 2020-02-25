<template>
  <div class="another-page">
    <page-splash text="The Page"></page-splash>
  </div>
</template>
<script>
export default {
  components: {
    pageSplash: () => import("../components/Splash")
  }
};
</script>