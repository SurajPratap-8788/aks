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