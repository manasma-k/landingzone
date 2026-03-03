resource "azurerm_application_gateway" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.capacity
  }

  gateway_ip_configuration {
    name      = "gw-ip-config"
    subnet_id = var.subnet_id
  }

  frontend_ip_configuration {
    name                          = "private-frontend-ip"
    private_ip_address            = var.private_frontend_ip_address
    private_ip_address_allocation = "Static"
    subnet_id                     = var.subnet_id
  }
#########Fronted IP#################
#   frontend_port {
#     name = "port-80"
#     port = var.http_port
#   }
# ###################################
#   frontend_port {
#     name = "port-443"
#     port = var.https_port
#   }

#   ssl_certificate {
#     name                = "ssl-cert"
#     key_vault_secret_id = var.ssl_certificate_secret_id
#   }

  backend_address_pool {
    name         = "default-backend-pool"
    ip_addresses = var.backend_ip_addresses
  }

  # backend_http_settings {
  #   name                                = "default-http-settings"
  #   cookie_based_affinity               = "Disabled"
  #   path                                = var.backend_path
  #   port                                = var.backend_port
  #   protocol                            = var.backend_protocol
  #   request_timeout                     = var.request_timeout
  #   pick_host_name_from_backend_address = var.pick_host_name_from_backend_address
  #   host_name                           = var.backend_host_name
  # }

  # http_listener {
  #   name                           = "http-listener"
  #   frontend_ip_configuration_name = "private-frontend-ip"
  #   frontend_port_name             = "port-80"
  #   protocol                       = "Http"
  #   host_name                      = var.listener_host_name
  # }

  # http_listener {
  #   name                           = "https-listener"
  #   frontend_ip_configuration_name = "private-frontend-ip"
  #   frontend_port_name             = "port-443"
  #   protocol                       = "Https"
  #   ssl_certificate_name           = "ssl-cert"
  #   host_name                      = var.listener_host_name
  # }

  # request_routing_rule {
  #   name                       = "http-rule"
  #   rule_type                  = "Basic"
  #   http_listener_name         = "http-listener"
  #   backend_address_pool_name  = "default-backend-pool"
  #   backend_http_settings_name = "default-http-settings"
  #   priority                   = 100
  # }

  # request_routing_rule {
  #   name                       = "https-rule"
  #   rule_type                  = "Basic"
  #   http_listener_name         = "https-listener"
  #   backend_address_pool_name  = "default-backend-pool"
  #   backend_http_settings_name = "default-http-settings"
  #   priority                   = 110
  # }

  tags = var.tags
}
