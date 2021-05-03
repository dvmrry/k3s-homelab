# k3s-homelab

## To Do:
- [ ] Set up new physical nodes
- [ ] Install Mellanox CX311A-XCAT's
- [ ] Migrate VMs
- [ ] Configure all service yaml files
- [ ] Read up on Flux v2 & gitops
- [ ] ???
- [ ] Profit

## Hardware
| Device            | Proccessor            | Memory       | OS         | OS Disk   | Data Disk          | NIC             | Roles                          |
| ------------------|-----------------------|--------------|------------|-----------|--------------------|-----------------|--------------------------------|
| Lenovo m920x Tiny | Intel Core i5-8500    | 32G DDR4     | Debian 10  | 256G NVMe | N/A                | Mellanox CX311A | 1x k3s master / 2x k3s worker  | 
| Lenovo m920x Tiny | Intel Core i5-8500    | 32G DDR4     | Debian 10  | 256G NVMe | N/A                | Mellanox CX311A | 1x k3s master / 2x k3s worker  |
| Lenovo m920x Tiny | Intel Core i5-8500    | 16G DDR4     | Debian 10  | 256G NVMe | N/A                | Mellanox CX311A | 1x k3s master / 1x k3s worker  |  
| HPE ML30 Gen9     | Intel Xeon E3-1230 v5 | 32G DDR4 ECC | Proxmox VE | 500G SSD  | 4x 12T Exos RAIDZ2 | Mellanox CX322A | VyOS primary / NFS / SMB / ZFS |
| Aruba S3500-24P   | Broadcom XLS 208      | 1G           | ArubaOS    | N/A       | N/A                | N/A             | L3 core                        |
| Kettop Mi18C      | Intel Celeron J1800   | 2G DDR3      | VyOS       | 32G SSD   | N/A                | Realtek RTL8111 | VyOS secondary                 |

## Management
- [ ] homer
- [ ] rancher
- [ ] snipe-it

### Development
- [ ] gitea
- [ ] wiki.js

### Monitoring
- [ ] grafana
- [ ] prometheus
- [ ] prometheus-blackbox-exporter
- [ ] prometheus-snmp-exporter
- [ ] netdata
- [ ] zabbix

### Services
- [ ] authelia
- [ ] firefly-iii
- [ ] flood
- [ ] grocy
- [ ] polr
- [ ] rtorrent
- [ ] snapdrop
- [ ] vaultwarden

### Media
- [ ] bazarr
- [ ] jackett
- [ ] jellyfin
- [ ] overseerr
- [ ] radarr
- [ ] sonarr



