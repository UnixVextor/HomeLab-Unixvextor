resource "proxmox_vm_qemu" "srv_demo_4" {
  name        = "srv-demo-4"
  desc        = "Server demo 4"
  agent       = 0
  target_node = "prox"
  qemu_os     = "other"
  bios        = "seabios"
  tags        = "demo,ubuntu-server"


  clone      = "ubuntu-jemmy-docker"
  full_clone = true

  # -- boot process -- 
  onboot           = false
  startup          = ""
  automatic_reboot = false

  cores   = 4
  sockets = 1
  memory  = 4096
  cpu     = "host"


  network {
    model  = "virtio"
    bridge = "vmbr10"
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
  ipconfig0  = "ip=10.10.10.14/24,gw=10.10.10.254"
  nameserver = "10.10.30.249"
  ciuser     = "unixvextor"
  sshkeys    = <<EOF
${var.PUBLIC_SSH_KEY}
EOF
}