resource "authentik_provider_proxy" "proxy" {
    for_each                        = local.proxy
    authorization_flow              = try(each.value.authorization_flow, data.authentik_flow.default-authorization-flow.id)
    external_host                   = try(each.value.external_host, "https://auth.${local.domain}")
    name                            = try(each.value.name, "${each.key}")
    basic_auth_enabled              = try(each.value.basic_auth_enabled, "false")
    basic_auth_password_attribute   = try(each.value.basic_auth_password_attribute, "")
    basic_auth_username_attribute   = try(each.value.basic_auth_username_attribute, "")
    cookie_domain                   = try(each.value.cookie_domain, local.domain)
    internal_host                   = try(each.value.internal_host, "")
    internal_host_ssl_validation    = try(each.value.internal_host_ssl_validation, "true")
    mode                            = try(each.value.mode, "proxy")
    skip_path_regex                 = try(each.value.skip_path_regex, "")
    token_validity                  = try(each.value.token_validity, "hours=24")
}