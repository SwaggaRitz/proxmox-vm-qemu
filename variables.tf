variable "agent" {
  description = "Use QEMU guest agent"
  type        = number
  default     = 1
}

variable "cpu_cores" {
  description = "Number of CPU cores"
  type        = number
  default     = 1
}

variable "cpu_sockets" {
  description = "Number of CPU sockets"
  type        = number
  default     = 1
}

variable "cpu_type" {
  description = "CPU Type"
  type        = string
  default     = "host"
}

variable "data_disk" {
  description = "Storage data disk parameter, example"
  type        = map(map(string))
  default     = {}
}

variable "description" {
  description = "Description of VM (Optional)"
  type        = string
  default     = ""
}

variable "ipconfig0" {
  description = "Cloud Init Network. If static: ip=x.x.x.x/xx,gw=x.x.x.x "
  type        = string
  default     = "ip=dhcp"
}

variable "memory_mb" {
  description = "Memory amount in MB"
  type = number
  default = 1024
}

variable "name" {
  description = "Name of VM"
  type        = string
}

variable "nameserver" {
  description = "Cloud Init DNS. Leave blank for DHCP"
  type        = string
  default     = ""
}

variable "network_bridge" {
  description = "Network bridge to use"
  type        = string
  default     = "vmbr0"
}

variable "network_model" {
  description = "Network card model"
  type        = string
  default     = "virtio"
}

variable "on_boot" {
  description = "Should the VM boot when Proxmox starts"
  type        = bool
  default     = true
}

variable "os_disk_size_gb" {
  description = "OS disk size in G"
  type        = string
  default     = "20G"
}

variable "os_type" {
  description = "Cloud init?"
  type        = string
  default     = "cloud-init"
}

variable "storage_id" {
  description = "Storage to host the VM on"
  type        = string
}

variable "storage_type" {
  description = "Storage Type"
  type        = string
  default = "virtio"
}

variable "target_node" {
  description = "Name of Proxmox node as defined in GUI"
  type        = string
}

variable "template" {
  description = "Name of the VM to clone"
  type        = string
}

variable "vm_id" {
  description = "Unique ID of Proxmox VM"
  type        = string
}






