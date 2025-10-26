variable "resource_groups" {
    description = "A map of resource groups to create"
    type = map(object({
        name     = string
        location = string
    }))
}
variable "container_registries" {
    description = "A map of container registries to create"
    type = map(object({
        name                = string
        resource_group_name = string
        location            = string
        sku                 = string
    }))
}
variable "kubernetes_clusters" {
    description = "A map of Kubernetes clusters to create"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
        dns_prefix          = string
        default_node_pool = map(object({
            name       = string
            node_count = number
            vm_size    = string
        }))
        identity = object({
            type = string
        })
        network_profile = object({
            network_plugin    = string
            load_balancer_sku = string
        })
         tags = map(string)
    }))
}
variable "mssql_servers" {
    description = "A map of MSSQL servers to create"
    type = map(object({
        name                         = string
        resource_group_name          = string
        location                     = string
        version                      = string
        administrator_login          = string
        administrator_login_password = string
        tags                         = map(string)
    }))
}
variable "mssql_databases" {
    description = "A map of MSSQL databases to create"
    type = map(object({
        name       = string
        server_id  = string
        collation  = string
        max_size_gb = number
        sku_name   = string
        tags       = map(string)
    }))
  
}
variable "key_vaults" {
  description = "A map of Key Vaults to create"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku_name            = string
    tenant_id           = string
    access_policy       = list(object({
      tenant_id               = string
      object_id               = string
      application_id          = optional(string)
      key_permissions         = list(string)
      secret_permissions      = list(string)
      certificate_permissions = list(string)
      storage_permissions     = optional(list(string))
    }))
    tags = map(string)
  }))
}
