terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.7.1"
    }

    sops = {
      source = "carlpett/sops"
      version = "0.6.2"
    }
  }
}

provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://172.18.0.3:8006/api2/json"
    pm_user = "root@pam"
    pm_password = data.sops_file.secrets.data["proxmox.pm_password"]
}

provider "sops" {
}
