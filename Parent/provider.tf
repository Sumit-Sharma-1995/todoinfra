terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "yamlrg"
    storage_account_name  = "yamlstg1"
    container_name        = "yamlcon"
    key                   = "yaml.terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2775dd26-3d9b-4b17-b5d0-b8edea927622"
}