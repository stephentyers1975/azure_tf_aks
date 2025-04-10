resource "azurerm_container_registry" "main" {
  name                    = replace("acr${var.application_name}${var.environment_name}", "-", "")
  resource_group_name     = azurerm_resource_group.main.name
  location                = azurerm_resource_group.main.location
  sku                     = "Premium"
  admin_enabled           = true
  zone_redundancy_enabled = true
}

# data "azuread_application" "acr_accs" {
#   display_name = var.container_registry_pushers # Replace with the group's display name
# }

data "azuread_service_principal" "acr_pushers" {
  display_name = var.container_registry_pushers
}

resource "azurerm_role_assignment" "acr_push" {
  scope                = azurerm_container_registry.main.id
  role_definition_name = "AcrPush"
  principal_id         = data.azuread_service_principal.acr_pushers.object_id
}