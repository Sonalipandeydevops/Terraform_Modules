output "prod_resource_group" {
  description = "Production Resource Group details"
  value = module.prod_resource_group.rg_id
    #rg_dev_name_output     = module.prod_resource_group.rg_name
}