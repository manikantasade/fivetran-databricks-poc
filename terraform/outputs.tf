output "environment" {
  description = "Deployment environment"
  value       = var.environment
}

output "catalog_name" {
  description = "Created Unity Catalog"
  value       = databricks_catalog.sales.name
}

output "schema_names" {
  description = "Created schema names"
  value = sort([
    for schema in databricks_schema.medallion :
    schema.name
  ])
}

output "schema_full_names" {
  description = "Fully qualified schema names"
  value = sort([
    for schema in databricks_schema.medallion :
    "${schema.catalog_name}.${schema.name}"
  ])
}
