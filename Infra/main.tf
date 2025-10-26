module "resource_group" {
  source = "../Module/azurerm_resource_group"
  resource_groups = var.resource_groups
}
module "container_registry" {
    depends_on = [ module.resource_group ]
  source = "../Module/azurerm_container_registry"
  container_registries = var.container_registries
}
module "kubernetes_cluster" {
    depends_on = [ module.container_registry ]
  source = "../Module/azurerm_kubernetes_cluster"
  kubernetes_clusters = var.kubernetes_clusters
}
module "mssql_server" {
    depends_on = [ module.resource_group ]
  source = "../Module/azurerm_mssql_server"
  mssql_servers = var.mssql_servers
}
module "mssql_database" {
    depends_on = [ module.mssql_server ]
  source = "../Module/azurerm_mssql_database"
  mssql_databases = var.mssql_databases
}
module "key_vault" {
    depends_on = [ module.resource_group ]
  source = "../Module/azurerm_key_vault"
  key_vaults = var.key_vaults
}