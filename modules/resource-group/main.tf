resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  #id = var.rg_id
  location = var.rg_location
}