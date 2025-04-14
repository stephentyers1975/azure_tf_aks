application_name     = "fleet-app"
environment_name     = "dev"
service_account_name = "workload"
namespace            = "app"
web_app_image = {
  name    = "fleetops-frontend"
  version = "2025.04.3"
}
web_api_image = {
  name    = "fleetops-backend"
  version = "2025.04.5"
}
backend_endpoint = "fleet-api"
# backend_endpoint = "http://20.14.7.63"
keyvault_name = "kv-fleet-app-dev"
registry_endpoint = "acrfleetappdev.azurecr.io"
service_account_client_id = "97dea734-d175-4d15-9f7c-34f833b89117"
tenant_id = "3560e0ac-1ca4-45b7-a251-734a87ca2ce2"