module "resource_group_region1" {
  source = "./modules/resource-group"

  ENABLED = var.ENABLED
  NAME    = upper("${var.PROJECT}back-${var.ENVIRONMENT}-${local.regions_acronym[0].rg01}-rg01")

  LOCATION = var.LOCATION_WEU
  TAGS     = merge(local.tags, { "hidden-title" = "ETF Backend - ${var.ENVIRONMENT} ${var.LOCATION_WEU}" })
}

module "resource_group_region2" {
  source = "./modules/resource-group"

  ENABLED  = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? true : false
  NAME     = upper("${var.PROJECT}back-${var.ENVIRONMENT}-${local.regions_acronym[0].rg02}-rg02")
  LOCATION = var.LOCATION_NEU
  TAGS     = merge(local.tags, { "hidden-title" = "ETF Backend - ${var.ENVIRONMENT} ${var.LOCATION_NEU}" })
}
