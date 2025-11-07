terraform {
  required_providers {
    azurerm = "hashicorp/azurerm"
    version = "4.51.0"
  }

backend "azurerm" {
    resource_group_name = "rg-tfstate"
    storage_account_name = "dailylab"
    container_name = "dailylab"
    key = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "47f00bc6-c0a2-4ef3-8447-b76762fcc0ce"
}