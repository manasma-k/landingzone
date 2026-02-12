terraform {
  backend "azurerm" {
    # TODO: set backend values for dev state storage.
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = "dev.tfstate"
  }
}
