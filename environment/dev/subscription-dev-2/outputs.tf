output "application_gateway_id" {
  description = "Application Gateway resource ID."
  value       = module.application_gateway.id
}

output "application_gateway_name" {
  description = "Application Gateway name."
  value       = module.application_gateway.name
}

output "application_gateway_private_frontend_ip" {
  description = "Private frontend IP configured on Application Gateway."
  value       = module.application_gateway.private_frontend_ip
}
