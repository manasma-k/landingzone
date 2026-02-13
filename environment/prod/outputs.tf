output "resource_group_id" {
  value = module.resource_group.id
}

output "vnet_id" {
  value = module.networking.id
}

output "storage_account_id" {
  value = module.storage.id
}

output "key_vault_id" {
  value = module.key_vault.id
}

output "log_analytics_id" {
  value = module.log_analytics.id
}
