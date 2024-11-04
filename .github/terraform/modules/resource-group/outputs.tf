output name {
  value = var.ENABLED == "true" ? azurerm_resource_group.rg[0].name : null
}

output location {
  value = var.ENABLED == "true" ? azurerm_resource_group.rg[0].location : null
}

output id {
  value = var.ENABLED == "true" ? azurerm_resource_group.rg[0].id : null
}
