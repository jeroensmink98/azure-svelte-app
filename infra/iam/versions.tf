terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.9.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.0.2"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {
  }
}

