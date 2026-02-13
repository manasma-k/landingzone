output "vnet_id" {
  description = "ID of the virtual network."
  value       = module.vnet.vnet_id
}

output "vnet_name" {
  description = "Name of the virtual network."
  value       = module.vnet.vnet_name
}

output "vnet_address_space" {
  description = "Address space of the virtual network."
  value       = module.vnet.vnet_address_space
}
