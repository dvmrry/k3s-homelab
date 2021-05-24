# Template machine
wget https://cdimage.debian.org/cdimage/openstack/current/debian-10-openstack-amd64.qcow2
virt-customize -a focal-server-cloudimg-amd64.img --install qemu-guest-agent
qm create 9000 --name debian10-cloudinit --memory 2048 -net0 virtio,bridge=vmbr0,tag=22
qm importdisk 9000 debian-10-openstack-amd64.qcow2 local-lvm
qm set 9000 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-9000-disk-0
qm set 9000 --ide2 local-lvm:cloudinit
qm set 9000 --boot c --bootdisk scsi0
qm set 9000 --cpu host,flags=+aes
qm set 9000 --serial0 socket
qm set 9000 --agent enabled=1
qm set 9000 --sshkey ~/.ssh/id_ed25519.pub
qm set 9000 --ciuser root
qm template 9000

