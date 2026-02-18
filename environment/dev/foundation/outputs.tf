output "resource_group_name" {
  value = azurerm_resource_group.foundation.name
}

output "vnet_ids" {
  value = { for name, instance in module.vnets : name => instance.vnet_id }
}

output "vnet_names" {
  value = [for name, _ in module.vnets : name]
}
