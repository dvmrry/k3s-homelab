variable "common" {
  type = map(string)
  default = {
    os_type       = "ubuntu"
    clone         = "ubuntu-cloudimg"
    nameserver    = "172.16.0.254"
  }
}

variable "masters" {
  type = map(map(string))
  default = {
    "m1.k8s.mrry.io" = {
      id          = 300
      cidr        = "172.24.0.10/24"
      cores       = 2
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:24:10"
      memory      = 4096
      disk        = "16G"
      target_node = "pve03"
    },
    "m2.k8s.mrry.io" = {
      id          = 301
      cidr        = "172.24.0.11/24"
      cores       = 2
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:24:11"
      memory      = 4096
      disk        = "16G"
      target_node = "pve04"
    },
    "m3.k8s.mrry.io" = {
      id          = 302
      cidr        = "172.24.0.12/24"
      cores       = 2
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:24:12"
      memory      = 4096
      disk        = "16G"
      target_node = "pve05"
    }
  }
}

variable "workers" {
  type = map(map(string))
  default = {
    "w1.k8s.mrry.io" = {
      id          = 303
      cidr        = "172.24.0.20/24"
      cores       = 10
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:24:20"
      memory      = 24576
      disk        = "32G"
      target_node = "pve03"
    },
    "w2.k8s.mrry.io" = {
      id          = 304
      cidr        = "172.24.0.21/24"
      cores       = 10
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:24:21"
      memory      = 24576
      disk        = "32G"
      target_node = "pve04"
    },
    "w3.k8s.mrry.io" = {
      id          = 305
      cidr        = "172.24.0.22/24"
      cores       = 10
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:24:22"
      memory      = 24576
      disk        = "32G"
      target_node = "pve05"
    }
  }
}
