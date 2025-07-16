variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string  
  
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}
variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group where the virtual network will be created."
  type        = string
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