output "resource_group_name" {
  description = "The name of the resource group created"
  value       = azurerm_resource_group.rg.name
}
output "location" {
  description = "The Azure region where the resource group is created"
  value       = azurerm_resource_group.rg.location
  
}