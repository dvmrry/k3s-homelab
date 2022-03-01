resource "authentik_flow" "flow" {
  for_each            = local.flow
  background          = try(each.value.background, "")
  compatibility_mode  = try(each.value.compatibility_mode, true)
  designation         = try(each.value.designation, "authentication")
  name                = try(each.value.name, "${each.key}")
  policy_engine_mode  = try(each.value.policy_engine_mode, "all")
  slug                = try(each.value.slug, "${each.key}")
  title               = try(each.value.title, "${each.key}")
}