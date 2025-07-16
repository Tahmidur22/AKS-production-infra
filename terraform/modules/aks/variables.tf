variable "aks_name" {
  description = "The name of the Azure Kubernetes Service (AKS) cluster."
  type        = string
  
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  type        = string
}   

variable "node_count" {
  description = "The number of nodes in the default node pool."
  type        = number
}   

variable "vm_size" {
  description = "The size of the virtual machines in the default node pool."
  type        = string
}   

variable "resource_group_name" {
  description = "The name of the resource group where the AKS cluster will be created."
  type        = string      
  
}

variable "location" {
  description = "The Azure region where the AKS cluster will be created."
  type        = string  
  
}

