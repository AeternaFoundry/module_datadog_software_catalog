variable "software_catalogs" {
  description = <<EOT
Map of software_catalogs, attributes below
Required:
    - entity
EOT

  type = map(object({
    entity = string
  }))
}

