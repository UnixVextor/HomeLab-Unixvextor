resource "proxmox_vm_qemu" "srv_prod_3" {
  name        = "srv-prod-3"
  desc        = "Server prod 3"
  agent       = 1
  target_node = "prox"
  qemu_os     = "other"
  bios        = "seabios"
  tags        = "demo,ubuntu-server"

  define_connection_info = false

  clone      = "ubuntu-jemmy-docker"
  full_clone = true

  # -- boot process -- 
  onboot           = true
  startup          = ""
  automatic_reboot = false

  cores   = 4
  sockets = 1
  memory  = 4096
  cpu     = "host"


  network {
    model  = "virtio"
    bridge = "vmbr30"
  }

  scsihw   = "virtio-scsi-pci" # default virtio-scsi-pci
  bootdisk = "scsi0"

  #   disk {
  #     slot = 0
  #     size      = "30G"
  #     type      = "scsi"
  #     storage   = "local-zfs"
  #     cache     = "writeback"
  #     discard   = "on"
  #   }

  lifecycle {
    ignore_changes = [
      disk,
      vm_state
    ]
  }

  # -- cloud-init --
  ipconfig0  = "ip=10.10.30.13/24,gw=10.10.30.254"
  nameserver = "10.10.30.249"
  ciuser     = "unixvextor"
  sshkeys    = <<EOF
  ${var.PUBLIC_SSH_KEY}
  EOF
}