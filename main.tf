

resource "proxmox_vm_qemu" "pxvm" {

  # VM General Settings
  target_node = var.target_node
  vmid = var.vm_id
  name = var.name
  desc = var.description

  # VM Advanced General Settings
  onboot = var.on_boot

  # VM OS Settings
  clone = var.template

  # VM System Settings
  agent = var.agent

  # VM CPU Settings
  cores = var.cpu_cores
  sockets = var.cpu_sockets
  cpu = var.cpu_type

  # VM Memory Settings
  memory = var.memory_mb

  # VM Disk Settings
  disk {
    storage = var.storage_id
    type    = var.storage_type
    size    = var.os_disk_size_gb
  }

  dynamic "disk" {
    for_each = var.data_disk
    iterator = terraform_disks
    content {
      storage = var.storage_id
      type    = var.storage_type
      size    = lookup(terraform_disks.value, "size_gb", null)
    }
  }

  # VM Network Settings
  network {
    bridge = var.network_bridge
    model  = var.network_model
  }

  # VM Cloud-Init Settings
  os_type = var.os_type

  # (Optional) IP Address and Gateway
  ipconfig0 = var.ipconfig0
  nameserver = var.nameserver

  # (Optional) Default User
  # ciuser = "your-username"

  # (Optional) Add your SSH KEY
  # sshkeys = <<EOF
  # #YOUR-PUBLIC-SSH-KEY
  # EOF
}