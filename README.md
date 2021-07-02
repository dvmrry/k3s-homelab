<div align="center">
  
### My WIP homelab running on:
[![Ansible](https://img.shields.io/badge/Ansible-V2.11.1-red?style=for-the-badge)](https://ansible.com)
[![k3s](https://img.shields.io/badge/k3s-v1.21.1-yellow?style=for-the-badge)](https://k3s.io/)
[![Proxmox](https://img.shields.io/badge/Proxmox-V6.4-green?style=for-the-badge)](https://proxmox.com)
[![Terraform](https://img.shields.io/badge/Terraform-V1.0.0-bluegreen?style=for-the-badge)](https://terraform.io)
[![Ubuntu](https://img.shields.io/badge/Ubuntu-V21.04-orange?style=for-the-badge)](https://ubuntu.com)
 
</div>

### Overview
----

### Servers
<div align="center">
  
| Device               | Proccessor            | Memory       | OS         | OS Disk   | Data Disk          | NIC             | Roles                             |
|----------------------|-----------------------|--------------|------------|-----------|--------------------|-----------------|-----------------------------------|
| 3x Lenovo m920x Tiny | Intel Core i7-8700    | 32G DDR4     | Proxmox VE | 256G NVMe | 256G NVMe          | Mellanox CX311A | 1x master / 1x worker / Ceph      | 
| HPE ML30 Gen9        | Intel Xeon E3-1230 v5 | 32G DDR4 ECC | Proxmox VE | 500G SSD  | 4x 12T Exos RAIDZ2 | Mellanox CX322A | VyOS / webproxy / NFS / SMB / ZFS |
| Kettop Mi18C         | Intel Celeron J1800   | 2G DDR3      | Proxmox BS | 32G SSD   | 1T HDD             | Realtek RTL8111 | Proxmox backup server             |
| Whitebox PC          | Intel Core i7-6700k   | 16G DDR4     | Proxmox VE | 256G SSD  | 1T SSD             | Intel I219-V    | Parsec / Steam                    |

</div>
  
----
### Networking

<div align="center">

| Device               | Proccessor       | Memory | OS          | Roles   |
|----------------------|------------------|--------|-------------|---------|
| Aruba S3500-24P      | Broadcom XLS 208 | 1G     | ArubaOS     | N/A     |
| Brocade ICX 6610-48P | ?                | ?      | FastIron OS | L3 core |
| Extreme x250e-24P    | ?                | ?      | ExtremeOS   | N/A     |
  
| VLAN | Subnet          | Subdomain    |
|------|-----------------|--------------|
| 16   | 172.16.0.252/30 | edge         | 
| 17   | 172.17.0.252/30 | proxy        | 
| 18   | 172.18.0.0/24   | mgmt         | 
| 19   | 172.19.0.0/24   | prod         | 
| 20   | 172.20.0.0/24   | home         | 
| 24   | 172.24.0.0/24   | k8s nodes    | 
|      | 172.25.0.0/24   | k8s lb       | 
|      | 172.26.0.0/26   | k8s cluster  | 
|      | 172.27.0.0/26   | k8s services | 

</div>

---
### k3s nodes

<div align="center">

| Hostname | CPU           | Memory | OS           | OS Disk | Roles                    |
|----------|---------------|--------|--------------|---------|--------------------------|
| m1       | 2vCPU - Host  | 4G     | Ubuntu 21.04 | 16G     | control-pane/etcd/master | 
| m2       | 2vCPU - Host  | 4G     | Ubuntu 21.04 | 16G     | control-pane/etcd/master | 
| m3       | 2vCPU - Host  | 4G     | Ubuntu 21.04 | 16G     | control-pane/etcd/master | 
| w1       | 10vCPU - Host | 24G    | Ubuntu 21.04 | 32G     | worker                   | 
| w2       | 10vCPU - Host | 24G    | Ubuntu 21.04 | 32G     | worker                   | 
| w3       | 10vCPU - Host | 24G    | Ubuntu 21.04 | 32G     | worker                   | 

</div>

---

### Management
- [ ] snipe-it

### Network
- [x] calico
- [x] external-dns
- [x] kube-vip
- [x] traefik

### Development
- [ ] gitea
- [ ] wiki.js

### Monitoring
- [x] grafana
- [x] prometheus
- [ ] prometheus-blackbox-exporter
- [ ] prometheus-snmp-exporter
- [ ] zabbix

### Services
- [x] authentik
- [ ] firefly-iii
- [ ] grocy
- [ ] polr
- [x] qBitorrent 
- [ ] snapdrop
- [ ] vaultwarden

### Media
- [ ] bazarr
- [x] jackett
- [x] tautulli
- [x] overseer
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

