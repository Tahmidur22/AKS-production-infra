output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw        
  sensitive = true
}

output "kube_api_server" {
  value = azurerm_kubernetes_cluster.aks.fqdn
}
