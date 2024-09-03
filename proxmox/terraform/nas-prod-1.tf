resource "proxmox_vm_qemu" "nas-prod-1" {
  name        = "nas-prod-1"
  desc        = "Nas Production Server, Unraid"
  agent       = 1
  target_node = "prox"
  qemu_os     = "126"
  # bios        = "ovmf"
  tags = "nas,production"

  full_clone = false
  # -- boot process -- 
  onboot           = true
  startup          = "order=1,up=10"
  automatic_reboot = false

  cores   = 2
  sockets = 1
  memory  = 8192
  cpu     = "host"


  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  scsihw   = "virtio-scsi-pci" # default virtio-scsi-pci
  bootdisk = "scsi0"

  # disk {
  #   slot = 0
  #   size      = "30G"
  #   type      = "scsi"
  #   storage   = "local-zfs"
  #   cache     = "writeback"
  #   discard   = "on"
  # }

  lifecycle {
    ignore_changes = [
      disk,
      vm_state
    ]
  }
}