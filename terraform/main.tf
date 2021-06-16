terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.7.1"
    }

    sops = {
      source = "carlpett/sops"
      version = "0.6.3"
    }
  }
}
