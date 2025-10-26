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
