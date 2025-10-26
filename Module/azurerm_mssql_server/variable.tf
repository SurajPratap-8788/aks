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