module "rg" {
  source              = "./modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
}
module "storage" {
  source                    = "./modules/storage"
  storage_account_name      = var.storage_account_name
  resource_group_name       = module.rg.resource_group_name 
  location                  = module.rg.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  storage_container_name    = var.storage_container_name
}
