// Terraform Variables File

// Resource Group Variable
resource_group_name = "aks-prod-rg"
location            = "UK South"

// Storage Account Variables
storage_account_name   = "aksstorage20250715tc"
storage_container_name = "akscontainer20250715tc"

// Network Variables
vnet_name                       = "aks-vnet-20250715tc"
address_space                   = ["10.0.0.0/16"]
public_subnet_name              = "aks-public-subnet-20250715tc"
public_subnet_address_prefixes  = ["10.0.1.0/24"]
private_subnet_name             = "aks-private-subnet-20250715tc"
private_subnet_address_prefixes = ["10.0.2.0/24"]
nsg_name                        = "aks-nsg-20250715tc"

// AKS Variables
aks_name        = "aks-cluster-20250715tc"
dns_prefix      = "aksdns20250715tc"
node_count      = 3
vm_size         = "Standard_DS2_v2"

// Azure Container Registry Variables
acr_name            = "acr20250715tc"
acr_sku             = "Standard"
acr_admin_enabled   = true