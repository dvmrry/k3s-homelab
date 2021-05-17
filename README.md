# k3s-homelab

## To Do:
- [x] Set up new physical nodes
- [ ] Install Mellanox CX311A-XCAT's
- [ ] Migrate services 
- [ ] Configure all service value.yaml files
- [ ] Read up on Flux v2 & gitops
- [ ] ???
- [ ] Profit

## Considerations:
- [ ] Separate Longhorn to dedicated VMs

## Hardware
| Device            | Proccessor            | Memory       | OS         | OS Disk   | Data Disk          | NIC             | Roles                                 |
|-------------------|-----------------------|--------------|------------|-----------|--------------------|-----------------|---------------------------------------|
| Lenovo m920x Tiny | Intel Core i7-8700    | 32G DDR4     | Proxmox VE | 256G NVMe | 256G NVMe          | Mellanox CX311A | 1x k3s master / 1x k3s worker         | 
| Lenovo m920x Tiny | Intel Core i7-8700    | 32G DDR4     | Proxmox VE | 256G NVMe | 256G NVMe          | Mellanox CX311A | 1x k3s master / 1x k3s worker         |
| Lenovo m920x Tiny | Intel Core i7-8700    | 32G DDR4     | Proxmox VE | 256G NVMe | 256G NVMe          | Mellanox CX311A | 1x k3s master / 1x k3s worker         |  
| HPE ML30 Gen9     | Intel Xeon E3-1230 v5 | 32G DDR4 ECC | Proxmox VE | 500G SSD  | 4x 12T Exos RAIDZ2 | Mellanox CX322A | VyOS primary / LB / NFS / SMB / ZFS / |
| Aruba S3500-24P   | Broadcom XLS 208      | 1G           | ArubaOS    | N/A       | N/A                | N/A             | L3 core                               |
| Kettop Mi18C      | Intel Celeron J1800   | 2G DDR3      | VyOS       | 32G SSD   | N/A                | Realtek RTL8111 | VyOS secondary                        |

## Nodes
| Hostname | CPU           | Memory | OS        | OS Disk | Data Disk | Roles                    |
|----------|---------------|--------|-----------|---------|-----------|--------------------------|
| k3s-m1   | 2vCPU - Host  | 4G     | Debian 10 | 32G     | N/A       | control-pane/etcd/master | 
| k3s-m2   | 2vCPU - Host  | 4G     | Debian 10 | 32G     | N/A       | control-pane/etcd/master | 
| k3s-m3   | 2vCPU - Host  | 4G     | Debian 10 | 32G     | N/A       | control-pane/etcd/master | 
| k3s-w1   | 10vCPU - Host | 26G    | Debian 10 | 64G     | 256G      | worker/longhorn          | 
| k3s-w2   | 10vCPU - Host | 26G    | Debian 10 | 64G     | 256G      | worker/longhorn          | 
| k3s-w3   | 10vCPU - Host | 26G    | Debian 10 | 64G     | 256G      | worker/longhorn          | 

## Management
- [ ] homer
- [x] rancher
- [ ] snipe-it

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
- [x] rtorrent
- [ ] snapdrop
- [ ] vaultwarden

### Media
- [ ] bazarr
- [x] jackett
- [ ] ombi
- [ ] plex
- [x] radarr
- [x] sonarr



