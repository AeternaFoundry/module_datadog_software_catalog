output "software_catalogs_id" {
  description = "Map of id values across all software_catalogs, keyed the same as var.software_catalogs except keys with no id are omitted"
  value       = { for k, v in datadog_software_catalog.software_catalogs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "software_catalogs_entity" {
  description = "Map of entity values across all software_catalogs, keyed the same as var.software_catalogs except keys with no entity are omitted"
  value       = { for k, v in datadog_software_catalog.software_catalogs : k => v.entity if v.entity != null && length(v.entity) > 0 }
}

