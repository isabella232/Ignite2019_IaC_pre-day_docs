resource "azurerm_virtual_network" "predayvnet" {
  name                = "tfignitepreday"
  location            = "East US 2"
  resource_group_name = "<<<NAME OF YOUR ASSIGNED RESOURCE GROUP>>>"
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }