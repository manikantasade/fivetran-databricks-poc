variable "databricks_profile" {
  description = "Databricks CLI authentication profile"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string

  validation {
    condition     = contains(["dev", "sit", "uat"], var.environment)
    error_message = "Environment must be dev, sit or uat."
  }
}

variable "catalog_name" {
  description = "Unity Catalog name"
  type        = string
}

variable "schema_names" {
  description = "List of schemas to create"
  type        = set(string)

  default = [
    "bronze",
    "silver",
    "gold",
    "audit",
    "quarantine"
  ]
}
