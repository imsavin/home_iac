resource "proxmox_vm_qemu" "media" {
  count             = 1
  name              = "media"
  target_node       = "pve"

  clone             = "ubuntu"

  os_type           = "cloud-init"
  cores             = 4
  sockets           = "1"
  cpu               = "host"
  memory            = 4096
  scsihw            = "virtio-scsi-pci"
  bootdisk          = "scsi0"
  agent = 0
  searchdomain      = "savin.org.ru"
  sshkeys           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDinnjV6O4zICVu2XzTFJpEsWp39gLkNI3kFkEbg7BissIhXPY+uH4CMGtUznltqPwpoBcomol4xHpdyRf+9yEsMbMy8V04BM0/LKdG+87F/aaHRRsOD8Lj0jlSzGMup694slxSJOnqzBHqSUV8r++zOa9p6zxR/0aWN3y+NbdtUPGCPGSRBgois2Kt9J5UzYVY0EjYrIPtSx+h/hwcE1TAVeMu2Mi3+8ntV0pVT2R1NVQdV0MruX8y16HsGx0+6pDFSaVAcLcPE9+2CbD5EKsxPk/w0u8iB71k1G2dFOBj2MhlL6GnfP3SSAaAjsHC+lWsnmltZkIG8Xt9UttUvb2d avial@darkstar"
  ciuser            = "avial"
  disk {
    size            = "3072G"
    type            = "virtio"
    storage         = "local-lvm"
    }

  network {
    model           = "virtio"
    bridge          = "vmbr0"
  }

  lifecycle {
    ignore_changes  = [
      network,
    ]
  }

  # Cloud Init Settings
  ipconfig0         = "ip=192.168.1.170/24,gw=192.168.1.1"
}


resource "proxmox_vm_qemu" "nextcloud" {
  count             = 1
  name              = "nextcloud.savin.org.ru"
  target_node       = "pve"

  clone             = "ubuntu"

  os_type           = "cloud-init"
  cores             = 4
  sockets           = "1"
  cpu               = "host"
  memory            = 4096
  scsihw            = "virtio-scsi-pci"
  bootdisk          = "scsi0"
  agent = 0
  searchdomain      = "savin.org.ru"
  sshkeys           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDinnjV6O4zICVu2XzTFJpEsWp39gLkNI3kFkEbg7BissIhXPY+uH4CMGtUznltqPwpoBcomol4xHpdyRf+9yEsMbMy8V04BM0/LKdG+87F/aaHRRsOD8Lj0jlSzGMup694slxSJOnqzBHqSUV8r++zOa9p6zxR/0aWN3y+NbdtUPGCPGSRBgois2Kt9J5UzYVY0EjYrIPtSx+h/hwcE1TAVeMu2Mi3+8ntV0pVT2R1NVQdV0MruX8y16HsGx0+6pDFSaVAcLcPE9+2CbD5EKsxPk/w0u8iB71k1G2dFOBj2MhlL6GnfP3SSAaAjsHC+lWsnmltZkIG8Xt9UttUvb2d avial@darkstar"
  ciuser            = "avial"
  disk {
    size            = "300G"
    type            = "virtio"
    storage         = "local-lvm"
    }

  network {
    model           = "virtio"
    bridge          = "vmbr0"
  }

  lifecycle {
    ignore_changes  = [
      network,
    ]
  }

  # Cloud Init Settings
  ipconfig0         = "ip=192.168.1.160/24,gw=192.168.1.1"
}


resource "proxmox_vm_qemu" "gateway" {
  count             = 1
  name              = "gateway.savin.org.ru"
  target_node       = "pve"

  clone             = "ubuntu"

  os_type           = "cloud-init"
  cores             = 2
  sockets           = "1"
  cpu               = "host"
  memory            = 2048
  scsihw            = "virtio-scsi-pci"
  bootdisk          = "scsi0"
  agent = 0
  searchdomain      = "savin.org.ru"
  sshkeys           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDinnjV6O4zICVu2XzTFJpEsWp39gLkNI3kFkEbg7BissIhXPY+uH4CMGtUznltqPwpoBcomol4xHpdyRf+9yEsMbMy8V04BM0/LKdG+87F/aaHRRsOD8Lj0jlSzGMup694slxSJOnqzBHqSUV8r++zOa9p6zxR/0aWN3y+NbdtUPGCPGSRBgois2Kt9J5UzYVY0EjYrIPtSx+h/hwcE1TAVeMu2Mi3+8ntV0pVT2R1NVQdV0MruX8y16HsGx0+6pDFSaVAcLcPE9+2CbD5EKsxPk/w0u8iB71k1G2dFOBj2MhlL6GnfP3SSAaAjsHC+lWsnmltZkIG8Xt9UttUvb2d avial@darkstar"
  ciuser            = "avial"
  disk {
    size            = "50G"
    type            = "virtio"
    storage         = "local-lvm"
    }

  network {
    model           = "virtio"
    bridge          = "vmbr0"
  }

  lifecycle {
    ignore_changes  = [
      network,
    ]
  }

  # Cloud Init Settings
  ipconfig0         = "ip=192.168.1.200/24,gw=192.168.1.1"
}


