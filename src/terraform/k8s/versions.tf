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

provider "kubernetes" {
  config_path = "~/.kube/config"
  # Optionally specify the AKS cluster context if needed
  # config_context = "your-aks-cluster-context-name"
}