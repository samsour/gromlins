<template>
  <div class="landing-page">
    <div class="feature">
      <div class="feature-content">
        <h1>{{ settings.pageHeading }}</h1>
      </div>
    </div>
    <div class="feature-boxes">
      <div v-for="(box, i) in settings.boxes" :key="i" class="box">
        <div v-if="box.icon" class="box-icon">
          Image id/src: {{box.icon[0]}}
          <img :src="box.icon[0]" />
        </div>
        <div class="box-heading">{{ box.heading }}</div>
      </div>
    </div>
  </div>
</template>

<script>
import { stored } from "@factor/api";
import Vue from "vue";
export default Vue.extend({
  computed: {
    post() {
      return stored("post") || {}
    },
    settings() {
      return this.post.settings || {}
    }
  },
  templateSettings() {
    return [
      {
        input: "text",
        label: "Heading",
        description: "Primary page heading",
        _id: "pageHeading",
        default: "Landing Page Template"
      },
      {
        _id: "boxes",
        input: "sortable",
        label: "Feature Boxes",
        description: "Some feature boxes",
        default: [{ __title: "Box 1" }, { __title: "Box 2" }],
        settings: [
          {
            input: "text",
            label: "Heading",
            _id: "heading",
            default: "Box"
          },
          {
            input: "image-upload",
            label: "Icon",
            _id: "icon"
          }
        ]
      }
    ]
  }
})
</script>
