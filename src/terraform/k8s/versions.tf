terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "~> 3.75.0"
      # version = "~> 4.26.0"
      version = "=4.1.0"
      
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.3.0"
      # version = "~> 2.45.0"
      # version = "~> 2.7.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.30.0"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
}