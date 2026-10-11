data "azurerm_managed_disks" "managed_disks_lookup" {
  for_each = var.managed_disks_lookup

  resource_group_name = each.value.resource_group_name
}

