resource "azurerm_mssql_database" "example" {
    for_each            = var.mssql_databases
    name                = each.value.name
    server_id           = each.value.server_id
    collation          = each.value.collation
    max_size_gb        = each.value.max_size_gb
    sku_name           = each.value.sku_name
    tags               = each.value.tags
}