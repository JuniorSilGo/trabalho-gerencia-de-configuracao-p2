variable "resource_group_name" {
  description = "Nome do Resource Group."
  type        = string
}

variable "location" {
  description = "Região da Azure."
  type        = string
}

variable "server_name" {
  description = "Nome do PostgreSQL Flexible Server."
  type        = string
}

variable "administrator_login" {
  description = "Usuário administrador."
  type        = string
}

variable "administrator_password" {
  description = "Senha do administrador."
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "Nome do banco."
  type        = string
}

variable "sku_name" {
  description = "SKU do servidor."
  type        = string
}

variable "storage_mb" {
  description = "Armazenamento em MB."
  type        = number
}

variable "postgres_version" {
  description = "Versão do PostgreSQL."
  type        = string
}