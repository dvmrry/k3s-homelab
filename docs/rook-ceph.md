# rook-ceph notes

**Export ENV variables**
    
    # Change as needed for physical disk mounting or OSD to rebuild
    export DISK="/dev/nvme0n1"
    export OSD_NUM="2"
    export OSD_NODE="w2"

    # zap the drive of all mbr/gpt headers
    sgdisk --zap-all $DISK

    # clean the ssd
    blkdiscard $DISK

    # delete the preparation pod
    k delete -n rook-ceph rook-ceph-osd-prepare-$OSD_NODE

    # delete the operator pod
    k delete -n rook-ceph rook-ceph-operator-546464887c-msb7p

    # delete the osd pod 
    k delete -n rook-ceph rook-ceph-osd-2-7f7bfbf9fc-pr6kl
