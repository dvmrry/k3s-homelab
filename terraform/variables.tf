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
      id          = 110
      ceph_cidr   = "172.23.0.10/24"
      cidr        = "172.24.0.10/24"
      cores       = 4
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:01"
      memory      = 4096
      disk        = "32G"
      target_node = "pve03"
    },
    "m2.k3s.mrry.io" = {
      id          = 111
      ceph_cidr   = "172.23.0.11/24"
      cidr        = "172.24.0.11/24"
      cores       = 4
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:02"
      memory      = 4096
      disk        = "32G"
      target_node = "pve04"
    },
    "m3.k3s.mrry.io" = {
      id          = 112
      ceph_cidr   = "172.23.0.12/24"
      cidr        = "172.24.0.12/24"
      cores       = 4
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:03"
      memory      = 4096
      disk        = "32G"
      target_node = "pve05"
    }
  }
}

variable "workers" {
  type = map(map(string))
  default = {
    "w1.k3s.mrry.io" = {
      id          = 120
      ceph_cidr   = "172.23.0.20/24"
      cidr        = "172.24.0.20/24"
      cores       = 8
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:10"
      memory      = 24576
      disk        = "64G"
      target_node = "pve03"
    },
    "w2.k3s.mrry.io" = {
      id          = 121
      ceph_cidr   = "172.23.0.21/24"
      cidr        = "172.24.0.21/24"
      cores       = 8
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:11"
      memory      = 24576
      disk        = "64G"
      target_node = "pve04"
    },
    "w3.k3s.mrry.io" = {
      id          = 122
      ceph_cidr   = "172.23.0.22/24"
      cidr        = "172.24.0.22/24"
      cores       = 8
      gw          = "172.24.0.254"
      macaddr     = "02:DE:4D:48:28:12"
      memory      = 24576
      disk        = "64G"
      target_node = "pve05"
    }
  }
}

