resource "azurerm_network_interface" "example" {
    for_each = var.vm
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnetdata[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.publicdatablock[each.key].id
  }
}

resource "azurerm_linux_virtual_machine" "example" {
    for_each = var.vm
  name                = each.value.vm_name
  resource_group_name = each.value.rg_name
  location            = each.value.vm_location
  size                = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password       = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.example[each.key].id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.source_image_reference.source_image_publisher
    offer     = each.value.source_image_reference.source_image_offer
    sku       = each.value.source_image_reference.source_image_sku
    version   = each.value.source_image_reference.source_image_version
  }
}

