data "azurerm_resource_group" "example" {
  name = "intact-groups"
}

data "azurerm_virtual_network" "read_vnet" {
  name                = azurerm_virtual_network.main.name
  resource_group_name = data.azurerm_resource_group.example.name
}

data "azurerm_subnet" "read_subnet" {
  name                 = azurerm_subnet.internal.name
  virtual_network_name = azurerm_virtual_network.main.name
  resource_group_name  = data.azurerm_resource_group.example.name
}

data "azurerm_network_interface" "read_nic" {
  name                = azurerm_network_interface.main.name
  resource_group_name = data.azurerm_resource_group.example.name
}

data "azurerm_virtual_machine" "read_vm" {
  name                = azurerm_virtual_machine.main.name
  resource_group_name = data.azurerm_resource_group.example.name
}