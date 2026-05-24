terraform {
  backend "azurerm" {
    resource_group_name  = "arpitRG"
    storage_account_name = "arpit123"
    container_name       = "tfstate"
    key                  = "dev-terraform.tfstate"
  }
}