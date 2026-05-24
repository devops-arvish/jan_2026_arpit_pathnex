
module "rg" {
  source = "../../modules/rg"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/vnet"
  vnet      = var.vnets
}
module "pip" {
  depends_on = [module.rg]
  source     = "../../modules/pip"
  pips       = var.pips
}
module "mssql_server" {
  depends_on    = [module.rg]
  source        = "../../modules/mssql_server"
  mssql_servers = var.mssql_servers
}
module "mssql_databases" {
  depends_on    = [module.mssql_server]
  source        = "../../modules/mssql_db"
  mssql_databases = var.mssql_databases
}

module "vm" {
  depends_on    = [module.rg, module.mssql_databases, module.pip, module.vnet]
  source        = "../../modules/vm"
  vms = var.vms
}
module "nsgs" {
depends_on = [module.rg, module.mssql_databases, module.pip, module.vnet, module.vm]
  source = "../../modules/nsg"
  nsgs=var.nsgs
}

module "vm_nsg_associations" {
  depends_on    = [module.rg, module.mssql_databases, module.pip, module.vnet, module.vm,module.nsgs]
  source = "../../modules/nic_assoc"
  vm_nsg_associations = var.vm_nsg_associations
}

// module "kvs" {
//   depends_on    = [module.rg, module.mssql_databases, module.pip, module.vnet, module.vm]
//   source = "../../modules/keyvault"
//   kvs = var.kvs
// }
