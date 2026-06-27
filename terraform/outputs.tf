# ========================================
# Compute
# ========================================

output "vm_name" {
  description = "Nome da máquina virtual."
  value       = module.compute.vm_name
}

output "vm_public_ip" {
  description = "Endereço IP público da VM."
  value       = module.compute.public_ip
}

# ========================================
# Database
# ========================================

output "database_server_name" {
  description = "Nome do servidor PostgreSQL."
  value       = module.database.database_server_name
}

output "database_fqdn" {
  description = "FQDN do PostgreSQL."
  value       = module.database.database_server_fqdn
}

output "database_name" {
  description = "Nome do banco."
  value       = module.database.database_name
}

# ========================================
# Gateway
# ========================================

output "gateway_url" {
  description = "URL do Azure API Management."
  value       = module.gateway.gateway_url
}

output "developer_portal_url" {
  description = "Portal do desenvolvedor."
  value       = module.gateway.developer_portal_url
}