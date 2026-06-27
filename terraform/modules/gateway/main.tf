resource "azurerm_api_management" "this" {
  name                = var.api_management_name
  location            = var.location
  resource_group_name = var.resource_group_name

  publisher_name  = var.publisher_name
  publisher_email = var.publisher_email

  sku_name = "Consumption_0"
}

resource "azurerm_api_management_api" "backend_api" {
  name                = "manutencao-publica"
  resource_group_name = var.resource_group_name
  api_management_name = azurerm_api_management.this.name

  revision     = "1"
  display_name = "Manutencao Publica"
  path         = "api"
  subscription_required = false


  protocols = [
    "https",
    "http"
  ]

  service_url = "http://${var.backend_ip}:3001"
}

resource "azurerm_api_management_api_operation" "proxy" {
  operation_id        = "proxy"
  api_name            = azurerm_api_management_api.backend_api.name
  api_management_name = azurerm_api_management.this.name
  resource_group_name = var.resource_group_name

  display_name = "Proxy"

  method       = "GET"
  url_template = "/"

  response {
    status_code = 200
  }
}