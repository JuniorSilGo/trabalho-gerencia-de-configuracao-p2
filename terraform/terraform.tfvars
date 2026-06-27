# =====================================================
# Azure
# =====================================================

resource_group_name = "rg-gerencia-configuracao-p2"

location = "North Central US"

# =====================================================
# Network
# =====================================================

virtual_network_name = "vnet-gerencia-configuracao"

address_space = [
  "10.0.0.0/16"
]

subnet_name = "subnet-default"

subnet_prefixes = [
  "10.0.1.0/24"
]

# =====================================================
# Virtual Machine
# =====================================================

vm_name = "vm-api"

vm_size = "Standard_B2ps_v2"

admin_username = "azureuser"

public_key_path = "~/.ssh/id_gc_p2.pub"

# =====================================================
# PostgreSQL
# =====================================================

server_name = "pgsql-junior-gc-p2"

administrator_login = "postgresadmin"

administrator_password = "SenhaForte@2026!"

database_name = "appdb"

# SKU mínima.
sku_name = "B_Standard_B1ms"

storage_mb = 32768

postgres_version = "16"

# =====================================================
# API Management
# =====================================================

api_management_name = "apim-junior-gc-p2"

publisher_name = "Junior Gomes"

publisher_email = "16217515709@cefet-rj.br"