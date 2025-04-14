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
  host = data.azurerm_kubernetes_cluster.aks.kube_config.0.host
  client_certificate = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate)
  client_key         = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.cluster_ca_certificate)
}

data "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-fleet-app-dev"
  resource_group_name = "rg-fleet-app-dev"
}