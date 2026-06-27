variable "resource_group_name" {
  description = "Nome do Resource Group."
  type        = string
}

variable "location" {
  description = "Região onde os recursos serão criados."
  type        = string
}

variable "vm_name" {
  description = "Nome da máquina virtual."
  type        = string
}

variable "vm_size" {
  description = "Tamanho da máquina virtual."
  type        = string
}

variable "admin_username" {
  description = "Usuário administrador da VM."
  type        = string
}

variable "public_key_path" {
  description = "Caminho da chave pública SSH."
  type        = string
}

# ===========================
# Network
# ===========================

variable "virtual_network_name" {
  description = "Nome da Virtual Network."
  type        = string
}

variable "address_space" {
  description = "Espaço de endereçamento da VNet."
  type        = list(string)
}

variable "subnet_name" {
  description = "Nome da Subnet."
  type        = string
}

variable "subnet_prefixes" {
  description = "Prefixos da Subnet."
  type        = list(string)
}

# ===========================
# Database
# ===========================

variable "server_name" {
  description = "Nome do PostgreSQL Flexible Server."
  type        = string
}

variable "administrator_login" {
  description = "Administrador do banco."
  type        = string
}

variable "administrator_password" {
  description = "Senha do banco."
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "Nome do banco de dados."
  type        = string
}

variable "sku_name" {
  description = "SKU do PostgreSQL."
  type        = string
}

variable "storage_mb" {
  description = "Armazenamento do banco."
  type        = number
}

variable "postgres_version" {
  description = "Versão do PostgreSQL."
  type        = string
}

# ===========================
# Gateway
# ===========================

variable "api_management_name" {
  description = "Nome do API Management."
  type        = string
}

variable "publisher_name" {
  description = "Nome do publicador."
  type        = string
}

variable "publisher_email" {
  description = "Email do publicador."
  type        = string
}