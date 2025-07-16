variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}
variable "account_tier" {
  description = "The tier of the storage account (e.g., Standard, Premium)"
  type        = string
  default     = "Standard"
}
variable "account_replication_type" {
  description = "The replication type of the storage account (e.g., LRS, GRS, ZRS)"
  type        = string
  default     = "LRS"
}
variable "storage_container_name" {
  description = "The name of the storage container"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created"
  type        = string
}
variable "location" {
  description = "The Azure region where the storage account will be created"
  type        = string
}


variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}
variable "public_subnet_name" {
  description = "The name of the public subnet."
  type        = string
}
variable "public_subnet_address_prefixes" {
  description = "The address prefixes for the public subnet."
  type        = list(string)
}
variable "private_subnet_name" {
  description = "The name of the private subnet."
  type        = string
}
variable "private_subnet_address_prefixes" {
  description = "The address prefixes for the private subnet."
  type        = list(string)
}
variable "nsg_name" {
  description = "The name of the network security group."
  type        = string
}

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