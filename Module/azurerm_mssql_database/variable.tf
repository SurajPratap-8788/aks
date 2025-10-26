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