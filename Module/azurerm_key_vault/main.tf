resource "azurerm_key_vault" "example" {
    for_each            = var.key_vaults
    name                = each.value.name
    resource_group_name = each.value.resource_group_name
    location            = each.value.location
    sku_name            = each.value.sku_name
    tenant_id           = each.value.tenant_id
    access_policy       = each.value.access_policy
    tags                = each.value.tags
}
