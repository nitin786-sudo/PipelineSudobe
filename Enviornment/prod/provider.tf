terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate_rg"
    storage_account_name = "tfstate2028"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}
  subscription_id = "36ac2c98-e83d-467b-902f-64177d491917"
}