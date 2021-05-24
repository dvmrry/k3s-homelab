# Template machine
Following settings should be adjusted to your needs.
Eg. I have my k3s machines utilizing vmbr0 on the hosts and VLAN22 with images on local-lvm

Pull down latest Debian 10 cloud-init image

    wget https://cdimage.debian.org/cdimage/openstack/current/debian-10-openstack-amd64.qcow2

Install qemu-guest-agent to VM template

    virt-customize -a focal-server-cloudimg-amd64.img --install qemu-guest-agent
    
Create proxmox VM

    qm create 9000 --name debian10-cloudinit --memory 2048 -net0 virtio,bridge=vmbr0,tag=22
    
Import Debian cloud-init image

    qm importdisk 9000 debian-10-openstack-amd64.qcow2 local-lvm
 
Set imported image as scsi0

    qm set 9000 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-9000-disk-0
    
Add cloud-init disk

    qm set 9000 --ide2 local-lvm:cloudinit
    
Set scsi0 as boot disk

    qm set 9000 --boot c --bootdisk scsi0

Set host CPU type and add AES hardware acceleration flag

    qm set 9000 --cpu host,flags=+aes

Add serial device for cloud-init

    qm set 9000 --serial0 socket

Enable qemu-guest-agent

    qm set 9000 --agent enabled=1

Copy SSH key

    qm set 9000 --sshkey ~/.ssh/id_ed25519.pub

Set local user (no password - SSH key will be used for login)

    qm set 9000 --ciuser root
    
Convert to template
    
    qm template 9000
