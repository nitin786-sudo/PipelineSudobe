terraform {
  required_version = ">=1.9.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.57.0"
    }
  }
}
provider "azurerm" {
  subscription_id = var.Subscription_ID
  features {}
}