# ========================================
# Network
# ========================================

module "network" {
  source = "./modules/network"

  resource_group_name = var.resource_group_name
  location            = var.location

  virtual_network_name = var.virtual_network_name
  address_space        = var.address_space

  subnet_name     = var.subnet_name
  subnet_prefixes = var.subnet_prefixes
}

# ========================================
# Compute
# ========================================

module "compute" {
  source = "./modules/compute"

  resource_group_name = module.network.resource_group_name
  location            = module.network.resource_group_location

  vm_name = var.vm_name
  vm_size = var.vm_size

  admin_username  = var.admin_username
  public_key_path = var.public_key_path

  subnet_id = module.network.subnet_id
}

# ========================================
# Database
# ========================================

module "database" {
  source = "./modules/database"

  resource_group_name = module.network.resource_group_name
  location            = module.network.resource_group_location

  server_name            = var.server_name
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password

  database_name = var.database_name

  sku_name         = var.sku_name
  storage_mb       = var.storage_mb
  postgres_version = var.postgres_version
}

# ========================================
# API Gateway
# ========================================

module "gateway" {
  source = "./modules/gateway"

  resource_group_name = module.network.resource_group_name
  location            = module.network.resource_group_location

  api_management_name = var.api_management_name

  publisher_name  = var.publisher_name
  publisher_email = var.publisher_email

  backend_ip = module.compute.public_ip
}