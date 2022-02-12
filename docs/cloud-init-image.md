# cloud-init template config
Following settings should be adjusted to your needs.
Eg. I have my k3s machines utilizing vmbr0 on the hosts and VLAN24 with images on local-lvm storage

    # Export ENV variables
    export MEMORY="2048"
    export NIC="vmbr0"
    export SSH_KEY="id_ed25519.pub"
    export STORAGE="local-lvm"
    export USER="dvmrry"
    export VLAN="24"
    export VM_ID="9000"
    export VM_NAME="ubuntu-cloudimg"
    export VM_IMG="jammy-server-cloudimg-amd64.img"

    # Pull down latest Debian 10 cloud-init image
    wget https://cloud-images.ubuntu.com/hirsute/current/hirsute-server-cloudimg-amd64.img
    
    # Create VM
    qm create $VM_ID --name $VM_NAME --memory $MEMORY -net0 virtio,bridge=$NIC,tag=$VLAN
    
    # Import disk
    qm importdisk --format qcow2 $VM_ID $VM_IMG $STORAGE 
 
    # Set imported image as scsi0
    qm set $VM_ID --scsihw virtio-scsi-pci --scsi0 $STORAGE:vm-$VM_ID-disk-0
   
    # NFS storage may require
    qm set $VM_ID --scsihw virtio-scsi-pci --scsi0 $STORAGE:$VM_ID/vm-$VM_ID-disk-0.qcow2
    
    # Add cloud-init disk**
    qm set $VM_ID --ide2 $STORAGE:cloudinit
    
    # Set scsi0 as boot disk**
    qm set $VM_ID --boot c --bootdisk scsi0

    # Set host CPU type and add AES hardware acceleration flag**
    qm set $VM_ID --cpu host,flags=+aes

    # Add serial device for cloud-init
    qm set $VM_ID --serial0 socket

    # Enable qemu-guest-agent
    qm set $VM_ID --agent enabled=1

    # Copy SSH key
    qm set $VM_ID --sshkey ~/.ssh/$SSH_KEY

    # Set local user (no password - SSH key will be used for login)
    qm set $VM_ID --ciuser $USER
    
    # Convert to template
    qm template $VM_ID

If this template utilizes shared storage, it should be able to be cloned from node to node without issue.

If this template is on local storage, clone this image to relevant nodes and prepend with Proxmox hostname. The Terraform playbook will also need to be modified to target the local template when creating k3s nodes.
