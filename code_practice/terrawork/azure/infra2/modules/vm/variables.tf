variable "vm_name" {}
variable "nic_name" {}
variable "rg_name" {}
variable "location" {}
variable "subnet_id" {}
variable "vm_size" {}
variable "admin_username" {
  type = string
}
variable "ssh_public_key" {
  type = string
}