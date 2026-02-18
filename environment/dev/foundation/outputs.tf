output "resource_group_name" {
  value = azurerm_resource_group.foundation.name
}

output "vnet_id" {
  value = azurerm_virtual_network.foundation.id
}

output "vnet_name" {
  value = azurerm_virtual_network.foundation.name
}
