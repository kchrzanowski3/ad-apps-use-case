terraform {
  required_providers {
    
    #azure cloud
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }

    #azure ad
    azuread = {
      source = "hashicorp/azuread"
      version = "2.47.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

#configure azure ad
provider "azuread" {
  # Configuration options
}