terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "praveen-rgs"
    storage_account_name = "praveen1234"
    container_name       = "tfstate"
    key                  = "dev-terraform.tfstate"

  }

}

provider "azurerm" {
  features {}
  subscription_id = "a9076473-03ad-4c76-8993-4edd69689ba6"
}