resource "datadog_software_catalog" "software_catalogs" {
  for_each = var.software_catalogs

  entity = each.value.entity
}

