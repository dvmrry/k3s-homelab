variable "common" {
  type = map(string)
  default = {
    os_type       = "debian"
    clone         = "debian10-cloudimg"
    search_domain = "k3s.mrry.io"
    nameserver    = "172.16.0.254"
  }
}

variable "masters" {
  type = map(map(string))
  default = {
    "m1.k3s.mrry.io" = {
      id          = 100
      cidr        = "172.24.0.1/24"
      cores       = 4
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:01"
      memory      = 4096
      disk        = "16G"
      target_node = "k3s-h1"
    },
    "m2.k3s.mrry.io" = {
      id          = 200
      cidr        = "172.24.0.2/24"
      cores       = 4
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:02"
      memory      = 4096
      disk        = "16G"
      target_node = "k3s-h2"
    },
    "m3.k3s.mrry.io" = {
      id          = 300
      cidr        = "172.24.0.3/24"
      cores       = 4
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:03"
      memory      = 4096
      disk        = "16G"
      target_node = "k3s-h3"
    }
  }
}

variable "workers" {
  type = map(map(string))
  default = {
    "w1.k3s.mrry.io" = {
      id          = 110
      cidr        = "172.24.0.4/24"
      cores       = 8
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:10"
      memory      = 22528
      disk        = "16G"
      target_node = "k3s-h1"
    },
    "w2.k3s.mrry.io" = {
      id          = 210
      cidr        = "172.24.0.5/24"
      cores       = 8
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:11"
      memory      = 22528
      disk        = "16G"
      target_node = "k3s-h2"
    },
    "w3.k3s.mrry.io" = {
      id          = 310
      cidr        = "172.24.0.6/24"
      cores       = 8
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:12"
      memory      = 22528
      disk        = "16G"
      target_node = "k3s-h3"
    }
  }
}

