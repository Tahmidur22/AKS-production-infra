
variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Azure Container Registry."
  type        = string
  
}
variable "location" {
  description = "The Azure region where the Azure Container Registry will be created."
  type        = string      
  
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry. Possible values are Basic, Standard, and Premium."
  type        = string
  default     = "Standard"
  
}

variable "acr_admin_enabled" {
  description = "Whether to enable the admin user for the Azure Container Registry."
  type        = bool
  default     = true   
  
}