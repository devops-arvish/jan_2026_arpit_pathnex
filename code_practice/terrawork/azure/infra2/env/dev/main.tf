module "rg" {
  source   = "../../modules/rg"
  name     = var.rg_name
  location = var.location
}

module "network" {
  source = "../../modules/network"

  vnet_name     = var.vnet_name
  subnet_name   = var.subnet_name
  rg_name       = module.rg.name
  location      = module.rg.location
  address_space = var.address_space
  subnet_prefix = var.subnet_prefix
}

module "storage" {
  source = "../../modules/storage"

  name     = var.storage_name
  rg_name  = module.rg.name
  location = module.rg.location
}

module "keyvault" {
  source = "../../modules/kv"

  name     = var.kv_name
  rg_name  = module.rg.name
  location = module.rg.location
}

module "vm" {
  source = "../../modules/vm"

  vm_name   = var.vm_name
  nic_name  = var.nic_name
  rg_name   = module.rg.name
  location  = module.rg.location
  subnet_id = module.network.subnet_id
  vm_size   = var.vm_size

  admin_username = var.admin_username
  ssh_public_key = var.ssh_public_key # ✅ pass as variable
}