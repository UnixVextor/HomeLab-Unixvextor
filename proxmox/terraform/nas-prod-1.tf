resource "proxmox_vm_qemu" "nas-prod-1" {
  name        = "nas-demo-1"
  desc        = "-Nas Unraid-"
  agent       = 1
  target_node = "prox"
  qemu_os     = "other"
  bios        = "ovmf"
  tags        = "nas,production"

  # -- boot process -- 
  onboot           = false
  startup          = ""
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