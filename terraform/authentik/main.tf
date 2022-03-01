terraform {
  required_version = ">= 0.13.0"
  required_providers {
    authentik = {
      source = "goauthentik/authentik"
      version = ">=2022.2.1"
    }
    sops = {
      source = "carlpett/sops"
      version = ">=0.6.3"
    }
  }
}
