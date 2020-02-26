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

addPageTemplate({
  name: "My Landing Page",
  slug: "landing-page",
  component: () => import("./templates/LandingPage")
})