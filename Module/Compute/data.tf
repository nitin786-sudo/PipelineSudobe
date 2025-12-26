data "azurerm_public_ip" "publicdatablock" {
    for_each = var.vm
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}

data "azurerm_subnet" "subnetdata" {
    for_each = var.vm
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
  name                 = each.value.subnet_name
}