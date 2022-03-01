resource "authentik_application" "app" {
  for_each            = local.app
  name                = try(each.value.name, "${each.key}")
  slug                = try(each.value.slug, "${each.key}")
  meta_description    = try(each.value.meta_description, "${each.key}")
  meta_icon           = try(each.value.meta_icon, "")
  meta_launch_url     = try(each.value.meta_launch_url, "https://${each.key}.${local.domain}")
  meta_publisher      = try(each.value.meta_publisher, "${each.key}.${local.domain}")
  policy_engine_mode  = try(each.value.policy_engine_mode, "any")
  protocol_provider   = try(each.value.protocol_provider, 0)
}