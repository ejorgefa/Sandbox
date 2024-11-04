resource "azurerm_resource_group" "rg" {
  count     = var.ENABLED == "true" ? 1 : 0 
  name      = var.NAME
  location  = var.LOCATION
  tags      = var.TAGS
}