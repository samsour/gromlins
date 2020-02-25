<template>
  <div class="home-page">
    <page-splash text="Home"></page-splash>
  </div>
</template>
<script>
export default {
  components: {
    pageSplash: () => import("../components/Splash")
  }
};
</script>