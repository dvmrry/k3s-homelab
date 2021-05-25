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
    k3s-m1 = {
      id          = 100
      cidr        = "172.22.0.210/24"
      cores       = 4
      gw          = "172.22.0.254"
      macaddr     = "02:DE:4D:48:28:01"
      memory      = 4096
      disk        = "16G"
      target_node = "k3s-h1"
    },
    k3s-m2 = {
      id          = 200
      cidr        = "172.22.0.211/24"
      cores       = 4
      gw          = "172.22.0.254"
      macaddr     = "02:DE:4D:48:28:02"
      memory      = 4096
      disk        = "16G"
      target_node = "k3s-h2"
    },
    k3s-m3 = {
      id          = 300
      cidr        = "172.22.0.212/24"
      cores       = 4
      gw          = "172.22.0.254"
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
    k3s-w1 = {
      id          = 110
      cidr        = "172.22.0.220/24"
      cores       = 8
      gw          = "172.22.0.254"
      macaddr     = "02:DE:4D:48:28:10"
      memory      = 22528
      disk        = "16G"
      target_node = "k3s-h1"
    },
    k3s-w2 = {
      id          = 210
      cidr        = "172.22.0.221/24"
      cores       = 8
      gw          = "172.22.0.254"
      macaddr     = "02:DE:4D:48:28:11"
      memory      = 22528
      disk        = "16G"
      target_node = "k3s-h2"
    },
    k3s-w3= {
      id          = 310
      cidr        = "172.22.0.222/24"
      cores       = 8
      gw          = "172.22.0.254"
      macaddr     = "02:DE:4D:48:28:12"
      memory      = 22528
      disk        = "16G"
      target_node = "k3s-h3"
    }
  }
}

variable "storage" {
  type = map(map(string))
  default = {
    k3s-s1 = {
      id          = 120
      cidr        = "172.22.0.230/24"
      cores       = 4
      gw          = "172.22.0.254"
      macaddr     = "02:DE:4D:48:28:20"
      memory      = 4096
      disk        = "16G"
      target_node = "k3s-h1"
    },
    k3s-s2 = {
      id          = 220
      cidr        = "172.22.0.231/24"
      cores       = 4
      gw          = "172.22.0.254"
      macaddr     = "02:DE:4D:48:28:21"
      memory      = 4096
      disk        = "16G"
      target_node = "k3s-h2"
    },
    k3s-s3 = {
      id          = 320
      cidr        = "172.22.0.232/24"
      cores       = 4
      gw          = "172.22.0.254"
      macaddr     = "02:DE:4D:48:28:22"
      memory      = 4096
      disk        = "16G"
      target_node = "k3s-h3"
    }
  }
}
