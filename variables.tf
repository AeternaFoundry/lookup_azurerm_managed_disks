variable "managed_disks_lookup" {
  description = <<EOT
Map of managed_disks_lookup, attributes below
Required:
    - resource_group_name
EOT

  type = map(object({
    resource_group_name = string
  }))
}

