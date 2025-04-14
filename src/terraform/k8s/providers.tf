provider "kubernetes" {
  host = data.azurerm_kubernetes_cluster.aks.kube_config.0.host
  client_certificate = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate)
  client_key         = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.cluster_ca_certificate)

#   # Use the Azure AD Pod Identity authentication plugin
#   auth_provider {
#     name = "azure"
#     config = {
#       client_id = var.service_account_client_id
#     }
#   }
}

data "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-fleet-app-dev"
  resource_group_name = "rg-fleet-app-dev"
}