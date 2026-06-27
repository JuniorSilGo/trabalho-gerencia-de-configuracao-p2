output "database_server_name" {
  value = azurerm_postgresql_flexible_server.this.name
}

output "database_server_fqdn" {
  value = azurerm_postgresql_flexible_server.this.fqdn
}

output "database_name" {
  value = azurerm_postgresql_flexible_server_database.this.name
}