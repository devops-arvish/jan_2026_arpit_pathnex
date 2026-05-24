variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_prefix" {
  type = list(string)
}

variable "storage_name" {
  type = string
}

variable "kv_name" {
  type = string
}


variable "vm_name" {
  type = string
}

variable "nic_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}
