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

  name                                 = "app-gateway-test"
  resource_group_name                  = "rg-dev-network"
  location                             = "eastus"
  subnet_id                            = "/subscriptions/4eddb456-1696-47e9-b24c-825f989a3704/resourceGroups/rg-dev-network/providers/Microsoft.Network/virtualNetworks/vnet_subscription_dev_1/subnets/snet_workload"
  private_frontend_ip_address          = "10.10.1.9"
  ssl_certificate_secret_id            = var.ssl_certificate_secret_id
  backend_ip_addresses                 = ["10.10.0.11","10.10.0.13"]
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
  capacity                             = 2
  tags                                 = local.tags
}
