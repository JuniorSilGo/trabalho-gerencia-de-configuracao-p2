variable "resource_group_name" {
  description = "Nome do Resource Group."
  type        = string
}

variable "location" {
  description = "Região onde os recursos serão criados."
  type        = string
}

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