terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""
  }
}
provider "azurerm" {
  features {}
  subscription_id = "ea592ba0-6ae2-40a5-9b48-56f62ff40955"
}

resource "azurerm_resource_group" "bhaikarg" {
  name     = "arpitRG"
  location = "Central India"
}

# variable "resource_groups" {}

resource "azurerm_storage_account" "bhaistg" {
  #for_each = var.resource_groups
  name                     = "arpitstorageterraform"
  resource_group_name      = azurerm_resource_group.bhaikarg.name
  location                 = azurerm_resource_group.bhaikarg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

