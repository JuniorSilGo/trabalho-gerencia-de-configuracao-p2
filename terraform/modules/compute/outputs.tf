output "vm_name" {
  value = azurerm_linux_virtual_machine.this.name
}

output "public_ip" {
  value = azurerm_public_ip.this.ip_address
}

output "network_interface_id" {
  value = azurerm_network_interface.this.id
}