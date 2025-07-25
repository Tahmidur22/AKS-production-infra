resource "azurerm_kubernetes_cluster" "aks" {
    name                = var.aks_name
    location            = var.location
    resource_group_name = var.resource_group_name
    dns_prefix          = var.dns_prefix
    
    default_node_pool {
        name       = "default"
        node_count = var.node_count
        vm_size    = var.vm_size
    }
    
    identity {
        type = "SystemAssigned"
    }
    
    tags = {
        Environment = "Production"
  }
}