# application-gateway-base

Terraform module to deploy an Azure Application Gateway with:

- Private frontend IP
- HTTP listener
- HTTPS listener (certificate from Key Vault secret)

## Usage

```hcl
module "app_gateway" {
  source = "../../modules/application-gateway-base"

  name                        = "agw-subscription-dev-1"
  resource_group_name         = "rg_subscription_dev_1"
  location                    = "eastus"
  subnet_id                   = "/subscriptions/<sub-id>/resourceGroups/rg_subscription_dev_1/providers/Microsoft.Network/virtualNetworks/vnet_subscription_dev_1/subnets/snet_appgw"
  private_frontend_ip_address = "10.10.2.10"

  ssl_certificate_secret_id = "https://<kv-name>.vault.azure.net/secrets/<cert-secret>/<version>"
  backend_ip_addresses      = ["10.10.1.4", "10.10.1.5"]

  listener_host_name = "app.contoso.internal"

  tags = {
    environment = "dev"
    managedBy   = "terraform"
  }
}
```

## Inputs

- `name`: Application Gateway name.
- `resource_group_name`: Resource group name.
- `location`: Azure location.
- `subnet_id`: Subnet ID for App Gateway.
- `private_frontend_ip_address`: Static private frontend IP.
- `ssl_certificate_secret_id`: Key Vault secret ID for listener certificate.
- `backend_ip_addresses`: Backend pool IP addresses.

Additional optional settings are available in `variables.tf`.
