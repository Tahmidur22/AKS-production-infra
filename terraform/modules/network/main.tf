resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet_name
    address_space       = var.address_space
    location            = var.location
    resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "public_subnet" {
    name                 = var.public_subnet_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = var.public_subnet_address_prefixes 
}

resource "azurerm_subnet" "private_subnet" {
    name                 = var.private_subnet_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = var.private_subnet_address_prefixes 
  
}

resource "azurerm_network_security_group" "nsg" {
    name                = var.nsg_name
    location            = var.location
    resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "public_subnet_nsg" {
    subnet_id                 = azurerm_subnet.public_subnet.id
    network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_subnet_network_security_group_association" "private_subnet_nsg" {
    subnet_id                 = azurerm_subnet.private_subnet.id
    network_security_group_id = azurerm_network_security_group.nsg.id
  
}