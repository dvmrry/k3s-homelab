# Template machine config
Following settings should be adjusted to your needs.
Eg. I have my k3s machines utilizing vmbr0 on the hosts and VLAN24 with images on local-lvm

Export ENV variables
    
    export STORAGE="ceph"
    export USER="dvmrry"
    export VM_ID="9000"
    export VM_NAME="debian10-cloudimg"

Pull down latest Debian 10 cloud-init image

    wget https://cdimage.debian.org/cdimage/openstack/current/debian-10-openstack-amd64.qcow2
    
Create proxmox VM

    qm create $VM_ID --name $VM_NAME --memory 2048 -net0 virtio,bridge=vmbr0,tag=24
    
Import Debian cloud-init image

    qm importdisk $VM_ID debian-10-openstack-amd64.qcow2 $STORAGE
 
Set imported image as scsi0

    qm set $VM_ID --scsihw virtio-scsi-pci --scsi0 $STORAGE:vm-$VM_ID-disk-0
    
Add cloud-init disk

    qm set $VM_ID --ide2 $STORAGE:cloudinit
    
Set scsi0 as boot disk

    qm set $VM_ID --boot c --bootdisk scsi0

Set host CPU type and add AES hardware acceleration flag

    qm set $VM_ID --cpu host,flags=+aes

Add serial device for cloud-init

    qm set $VM_ID --serial0 socket

Enable qemu-guest-agent

    qm set $VM_ID --agent enabled=1

Copy SSH key

    qm set $VM_ID --sshkey ~/.ssh/id_ed25519.pub

Set local user (no password - SSH key will be used for login)

    qm set $VM_ID --ciuser $USER
    
Convert to template
    
    qm template $VM_ID

If this template utilizes shared storage, it should be able to be cloned from node to node without issue.

If this template is on local storage, clone this image to relevant nodes and prepend with Proxmox hostname. The Terraform playbook will also need to be modified to target the local template when creating k3s nodes.
