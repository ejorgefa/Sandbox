variable "LOCATION" {
  type        = string
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
}

variable "NAME" {
  type        = string
  description = "(Required) The name of the resource group. Must be unique on your Azure subscription."
}

variable "TAGS" {
  type        = map
  description = "Generic tags"
}

variable "ENABLED" {
  type = string
}