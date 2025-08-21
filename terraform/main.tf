module "rg" {
  source              = "./modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
}
module "storage" {
  source                   = "./modules/storage"
  storage_account_name     = var.storage_account_name
  resource_group_name      = module.rg.resource_group_name
  location                 = module.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  storage_container_name   = var.storage_container_name
}
module "network" {
  source                          = "./modules/network"
  vnet_name                       = var.vnet_name
  address_space                   = var.address_space
  location                        = module.rg.location
  resource_group_name             = module.rg.resource_group_name
  public_subnet_name              = var.public_subnet_name
  public_subnet_address_prefixes  = var.public_subnet_address_prefixes
  private_subnet_name             = var.private_subnet_name
  private_subnet_address_prefixes = var.private_subnet_address_prefixes
  nsg_name                        = var.nsg_name
}
module "aks" {
  source              = "./modules/aks"
  aks_name            = var.aks_name
  node_count          = var.node_count
  dns_prefix          = var.dns_prefix
  vm_size             = var.vm_size
  resource_group_name = module.rg.resource_group_name
  location            = module.rg.location
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  resource_group_name = module.rg.resource_group_name
  location            = module.rg.location
  acr_sku             = var.acr_sku
  acr_admin_enabled   = var.acr_admin_enabled
}