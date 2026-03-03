locals {
  tags = merge(
    {
      environment = var.environment
      managedBy   = "terraform"
      workload    = "subscription-dev-2"
    },
    var.tags
  )
}

module "application_gateway" {
  source = "../../../modules/application-gateway-base"

  name                                 = var.name
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  subnet_id                            = var.subnet_id
  private_frontend_ip_address          = var.private_frontend_ip_address
  ssl_certificate_secret_id            = var.ssl_certificate_secret_id
  backend_ip_addresses                 = var.backend_ip_addresses
  backend_port                         = var.backend_port
  backend_protocol                     = var.backend_protocol
  backend_path                         = var.backend_path
  backend_host_name                    = var.backend_host_name
  pick_host_name_from_backend_address  = var.pick_host_name_from_backend_address
  listener_host_name                   = var.listener_host_name
  http_port                            = var.http_port
  https_port                           = var.https_port
  request_timeout                      = var.request_timeout
  sku_name                             = var.sku_name
  sku_tier                             = var.sku_tier
  min_capacity                         = var.min_capacity
  max_capacity                         = var.max_capacity
  tags                                 = local.tags
}
