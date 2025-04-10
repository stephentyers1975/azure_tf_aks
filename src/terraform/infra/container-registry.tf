resource "azurerm_container_registry" "main" {
  name                    = replace("acr${var.application_name}${var.environment_name}", "-", "")
  resource_group_name     = azurerm_resource_group.main.name
  location                = azurerm_resource_group.main.location
  sku                     = "Premium"
  admin_enabled           = true
  zone_redundancy_enabled = true
}

data "azurerm_service_principal" "acr_accs" {
  count = length(var.container_registry_pushers)
  application_id = var.container_registry_pushers[count.index]
}

resource "azurerm_role_assignment" "acr_push" {

  count = length(var.container_registry_pushers)

  scope                = azurerm_container_registry.main.id
  role_definition_name = "AcrPush"
  principal_id         = data.azurerm_service_principal.acr_accs.object_id[count.index]

}