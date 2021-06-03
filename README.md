<div align="center">
  
### My WIP homelab running on:
[![Ansible](https://img.shields.io/badge/Ansible-V2.10.8-red?style=for-the-badge)](https://ansible.com)
[![Debian](https://img.shields.io/badge/Debian-V10.9-orange?style=for-the-badge)](https://debian.com)
[![k3s](https://img.shields.io/badge/k3s-v1.21.0-yellow?style=for-the-badge)](https://k3s.io/)
[![Proxmox](https://img.shields.io/badge/Proxmox-V6.4-green?style=for-the-badge)](https://proxmox.com)
[![Terraform](https://img.shields.io/badge/Terraform-V0.15.4-bluegreen?style=for-the-badge)](https://terraform.io)
 
</div>

### Overview
----

### To Do:
- [x] Create Ansible role for Proxmox hosts
- [x] Create initial cloud-init Debian 10 template
- [x] Create Terraform playbook for node creation
- [x] Create Ansible playbook for node configurationterraf
- [x] Replace Aruba S3500 with Brocade 6610
- [ ] Configure kube-vip [x] & calico for BGP routing 
- [ ] Implement Flux/Kustomize
- [ ] Install Mellanox CX311A-XCAT's [Awaiting PCIe risers]

----
### Hardware
<div align="center">
  
| Device            | Proccessor            | Memory       | OS         | OS Disk   | Data Disk          | NIC             | Roles                             |
|-------------------|-----------------------|--------------|------------|-----------|--------------------|-----------------|-----------------------------------|
| Lenovo m920x Tiny | Intel Core i7-8700    | 32G DDR4     | Proxmox VE | 256G NVMe | 256G NVMe          | Mellanox CX311A | 1x master / 1x worker / Ceph      | 
| Lenovo m920x Tiny | Intel Core i7-8700    | 32G DDR4     | Proxmox VE | 256G NVMe | 256G NVMe          | Mellanox CX311A | 1x master / 1x worker / Ceph      |
| Lenovo m920x Tiny | Intel Core i7-8700    | 32G DDR4     | Proxmox VE | 256G NVMe | 256G NVMe          | Mellanox CX311A | 1x master / 1x worker / Ceph      |  
| HPE ML30 Gen9     | Intel Xeon E3-1230 v5 | 32G DDR4 ECC | Proxmox VE | 500G SSD  | 4x 12T Exos RAIDZ2 | Mellanox CX322A | VyOS / webproxy / NFS / SMB / ZFS |
| Kettop Mi18C      | Intel Celeron J1800   | 2G DDR3      | Proxmox BS | 32G SSD   | 1T HDD             | Realtek RTL8111 | Proxmox backup server             |
| Whitebox PC       | Intel Core i7-6700k   | 16G DDR4     | Proxmox VE | 256G SSD  | 1T SSD             | Intel I219-V    | Parsec / Steam                    |

</div>
  
----
### Networking

<div align="center">

| Device               | Proccessor          | Memory   | OS          | Roles          |
|----------------------|---------------------|----------|-------------|----------------|
| Aruba S3500-24P      | Broadcom XLS 208    | 1G       | ArubaOS     | N/A            |
| Brocade ICX 6610-48P | ?                   | ?        | FastIron OS | L3 core        |
| Extreme x250e-24P    | ?                   | ?        | ExtremeOS   | N/A            |

  
</div>

### Nodes

<div align="center">

| Hostname       | CPU           | Memory | OS        | OS Disk | Roles                    |
|----------------|---------------|--------|-----------|---------|--------------------------|
| m1.k3s.mrry.io | 2vCPU - Host  | 4G     | Debian 1  | 32G     | control-pane/etcd/master | 
| m2.k3s.mrry.io | 2vCPU - Host  | 4G     | Debian 10 | 32G     | control-pane/etcd/master | 
| m3.k3s.mrry.io | 2vCPU - Host  | 4G     | Debian 10 | 32G     | control-pane/etcd/master | 
| w1.k3s.mrry.io | 10vCPU - Host | 24G    | Debian 10 | 64G     | worker                   | 
| w2.k3s.mrry.io | 10vCPU - Host | 24G    | Debian 10 | 64G     | worker                   | 
| w3.k3s.mrry.io | 10vCPU - Host | 24G    | Debian 10 | 64G     | worker                   | 

</div>

---

## Management
- [ ] homer
- [x] rancher
- [ ] snipe-it

## Network
- [ ] external-dns
- [ ] kube-vip
- [ ] metallb
- [ ] traefik

### Development
- [ ] gitea
- [ ] wiki.js

### Monitoring
- [ ] grafana
- [ ] prometheus
- [ ] prometheus-blackbox-exporter
- [ ] prometheus-snmp-exporter
- [ ] zabbix

### Services
- [ ] authelia
- [ ] firefly-iii
- [x] flood
- [ ] grocy
- [ ] polr
- [x] qBitorrent 
- [ ] snapdrop
- [ ] vaultwarden

### Media
- [ ] bazarr
- [x] jackett
- [ ] tautulli
- [ ] ombi
- [x] plex
- [x] radarr
- [x] sonarr

--- 

### Special thanks

[taboshi](https://github.com/toboshii)

[onedr0p](https://github.com/onedr0p)

[k8s-at-home](https://github.com/k8s-at-home)

[monachus](https://gitlab.com/monachus)

[techno-tim](https://github.com/techno-tim)

