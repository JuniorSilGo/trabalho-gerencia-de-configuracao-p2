variable "resource_group_name" {
  description = "Nome do Resource Group."
  type        = string
}

variable "location" {
  description = "Região da Azure."
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
  description = "Usuário administrador."
  type        = string
}

variable "public_key_path" {
  description = "Caminho da chave pública SSH."
  type        = string
}

variable "subnet_id" {
  description = "ID da subnet."
  type        = string
}