provider "authentik" {
  url   = "https://auth.mrry.io"
  token = data.sops_file.secrets.data["authentik.token"]
}

provider "sops" {
}
