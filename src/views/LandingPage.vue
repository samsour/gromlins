<template>
  <div class="landing-page">
    <div class="feature">
      <div class="feature-content">
        <h1>{{ post.settings.pageHeading }}</h1>
        <factor-btn size="large" btn="primary">Button</factor-btn>
      </div>
    </div>
    <div class="feature-boxes">
      <div v-for="(box, i) in post.settings.boxes" :key="i" class="box">
        <div v-if="box.icon" class="box-icon">
          <img :src="box.icon[0].url" />
        </div>
        <div class="box-heading">{{ box.heading }}</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    name: "landingPage"
}
</script>