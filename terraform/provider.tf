provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://172.18.0.3:8006/api2/json"
    pm_user = "root@pam"
    pm_password = data.sops_file.secrets.data["proxmox.pm_password"]
    pm_parallel = 20
}

provider "sops" {
}
