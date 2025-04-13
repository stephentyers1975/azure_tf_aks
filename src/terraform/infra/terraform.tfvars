application_name          = "fleet-app"
environment_name          = "dev"
primary_region            = "centralus"
domain_name               = "cloud-stack.io"
vnet_cidr_block           = "10.137.0.0/22"
az_count                  = 2
aks_orchestration_version = "1.31.7"
# aks_orchestration_version = "1.26.6"
aks_system_pool = {
  vm_size        = "Standard_D2s_v3"
  min_node_count = 2
  max_node_count = 3
}
aks_workload_pool = {
  # vm_size        = "Standard_D2s_v3"
  vm_size        = "Standard_F8s_v2"
  min_node_count = 2
  max_node_count = 3
}
# container_registry_pushers = ["8fca167c-d540-4aee-b1f6-385398b14f44"]
container_registry_pushers = "docker_acc"
keyvault_readers           = ["c5783f70-3117-405a-884b-7c743571e908"]
keyvault_admins            = ["c5783f70-3117-405a-884b-7c743571e908"]
k8s_service_account_name   = "workload"
k8s_namespace              = "app"
database_admin_username    = "psqladmin"

