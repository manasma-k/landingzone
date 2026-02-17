output "vnet_id" {
  description = "ID of the virtual network."
  value       = azurerm_virtual_network.foundation_vnet.id
}

output "vnet_name" {
  description = "Name of the virtual network."
  value       = azurerm_virtual_network.foundation_vnet.name
}

output "vnet_address_space" {
  description = "Address space of the virtual network."
  value       = azurerm_virtual_network.foundation_vnet.address_space
}
