locals {
# One-liners
  domain    = data.sops_file.secrets.data["secret.domain"]
  proxy_id  = authentik_provider_proxy.proxy["forward-domain"].id

# Maps
  app = {
    authentik = {
      meta_description    = "Authentik management"
      meta_launch_url     = "https://auth.${local.domain}"
      meta_publisher      = "auth.${local.domain}"
    },
    calibre = {},
    filebrowser = {
      meta_launch_url     = "https://media.${local.domain}"
      meta_publisher      = "media.${local.domain}"
    },
    grafana = {
      meta_description    = "Metrics visualization"
    },
    mrryio = {
      meta_launch_url     = "https://${local.domain}"
      meta_description    = "Default application portal for all mrry.io services"
      meta_publisher      = "${local.domain}"
      name                = "${local.domain}"
      protocol_provider   = "${local.proxy_id}"
      slug                = "default"
    },
    overseerr = {
      meta_launch_url     = "https://requests.${local.domain}"
      meta_publisher      = "requests.${local.domain}"
    },
    prometheus = {
      meta_description    = "Metrics database"
    },
    prowlarr = {},
    qb = {},
    radarr = {},
    readarr = {},
    readarr-audio = {},
    rook = {
      meta_description    = "Rook Ceph management"
    },
    sonarr = {
      meta_description    = "PVR"
    }
  }
  flow = { 
    default-authentication-flow = {
      background          = "/static/dist/assets/images/flow_background.jpg"
      title               = "Welcome to authentik!"
      name                = "Welcome to authentik!"
      policy_engine_mode  = "all"
    }
  }

  proxy = {
    forward-domain = {
      cookie_domain       = "${local.domain}"
      mode                = "forward_domain"
    }
  }
}