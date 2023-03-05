# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group

resource "azurerm_resource_group" "iz_rg" {
  name     = "rg-${var.basename}"
  location = var.location
  tags     = var.tags

  count = var.module_enabled ? 1 : 0
}
