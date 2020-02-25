<template>
  <div class="content">
    <page-header></page-header>
    <router-view />
  </div>
</template>
<script>
import PageHeader from "./components/Header";

export default {
  components: {
    PageHeader
  }
};
</script>