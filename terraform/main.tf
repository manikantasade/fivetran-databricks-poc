terraform {
  required_version = ">= 1.5.0"
}

resource "databricks_catalog" "sales" {
  name    = var.catalog_name
  comment = "Sales data platform - ${upper(var.environment)} environment"

  properties = {
    collation = "UTF8_BINARY"
  }

  lifecycle {
    prevent_destroy = true
    ignore_changes  = [storage_root]
  }
}

resource "databricks_schema" "medallion" {
  for_each = var.schema_names

  catalog_name = databricks_catalog.sales.name
  name         = each.value
  comment      = "${each.value} schema for ${upper(var.environment)} environment"

  lifecycle {
    prevent_destroy = true
  }
}
