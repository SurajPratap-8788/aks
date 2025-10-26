terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.50.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rggg1"
    storage_account_name = "stggg1"
    container_name       = "container"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "3bafb5d4-689a-4313-b617-9f3367263cd7"
}