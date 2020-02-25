import { addContentRoute } from "@factor/api"

addContentRoute({
  path: "/",
  component: () => import("./views/Home")
})

addContentRoute({
  path: "/page",
  component: () => import("./views/Page")
})