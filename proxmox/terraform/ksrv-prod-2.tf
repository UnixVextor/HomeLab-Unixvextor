resource "proxmox_vm_qemu" "ksrv_prod_2" {
  name        = "ksrv-prod-2"
  desc        = "-Kube node prod 2-"
  agent       = 0
  target_node = "prox"
  qemu_os     = "other"
  bios        = "seabios"
  tags        = "demo,ubuntu-server,kube"


  clone      = "ubuntu-template"
  full_clone = true

  # -- boot process -- 
  onboot           = false
  startup          = ""
  automatic_reboot = true

  cores   = 4
  sockets = 1
  memory  = 8192
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
  ipconfig0  = "ip=10.10.30.32/24,gw=10.10.30.254"
  nameserver = "10.10.30.249"
  ciuser     = "unixvextor"
  sshkeys    = <<EOF
${var.PUBLIC_SSH_KEY}
EOF
}