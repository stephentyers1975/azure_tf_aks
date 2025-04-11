application_name     = "fleet-app"
environment_name     = "dev"
service_account_name = "workload"
namespace            = "app"
web_app_image = {
  name    = "fleetops-frontend"
  version = "2023.11.8"
}
web_api_image = {
  name    = "fleetops-backend"
  version = "2023.11.6"
}
backend_endpoint = "http://20.14.7.63"
keyvault_name = "kv-fleet-app-dev"
registry_endpoint = "acrfleetappdev.azurecr.io"
service_account_client_id = "a7c4ee46-5288-4efd-b3b9-2d0c2367b26d"
tenant_id = "3560e0ac-1ca4-45b7-a251-734a87ca2ce2"