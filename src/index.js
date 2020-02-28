import { addContentRoute } from "@factor/api"
import { addPageTemplate } from "@factor/templates"

addContentRoute({
  path: "/",
  component: () => import("./views/Home")
})

addContentRoute({
  path: "/page",
  component: () => import("./views/Page")
})

// slug must match the template name in kebab-case
addPageTemplate({
  name: "Custom Landingpage",
  slug: "custom-landingpage",
  component: () => import("./templates/Landingpage")
})
