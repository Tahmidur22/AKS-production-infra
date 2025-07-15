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