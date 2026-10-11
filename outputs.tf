output "managed_disks_lookup_id" {
  description = "Map of id values across all managed_disks_lookup, keyed the same as var.managed_disks_lookup"
  value       = { for k, v in data.azurerm_managed_disks.managed_disks_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_disks_lookup_disk" {
  description = "Map of disk values across all managed_disks_lookup, keyed the same as var.managed_disks_lookup"
  value       = { for k, v in data.azurerm_managed_disks.managed_disks_lookup : k => v.disk if v.disk != null && length(v.disk) > 0 }
}
output "managed_disks_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all managed_disks_lookup, keyed the same as var.managed_disks_lookup"
  value       = { for k, v in data.azurerm_managed_disks.managed_disks_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

