#Configure Network Interface# Configure Network Interface
resource "azurerm_network_interface" "predaynic" {
  name                = "tfignitepredaynic"
  location            = var.location
  resource_group_name = var.rg

  ip_configuration {
    name                          = "tfpredaynicconfig"
    subnet_id                     = azurerm_subnet.predaysubnet.id
    private_ip_address_allocation = "Dynamic"
  }
  tags                = var.tags
}