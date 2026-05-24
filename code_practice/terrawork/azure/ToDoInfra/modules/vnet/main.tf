resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnet
  name = each.value.vnet_name
  location = each.value.location
  address_space = each.value.address_space
  resource_group_name = each.value.rg_name

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
    name             = subnet.value.subnet_name
    address_prefixes = subnet.value.address_prefixes
  }

}
}

