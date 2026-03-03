output "id" {
  description = "Application Gateway resource ID."
  value       = azurerm_application_gateway.this.id
}

output "name" {
  description = "Application Gateway name."
  value       = azurerm_application_gateway.this.name
}

output "private_frontend_ip" {
  description = "Private frontend IP configured on Application Gateway."
  value       = var.private_frontend_ip_address
}
