terraform {
  required_version = ">= 1.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # Uncomment to use remote state (optional)
  # backend "azurerm" {
  #   resource_group_name  = "terraform-state"
  #   storage_account_name = "tfstate123"
  #   container_name       = "tfstate"
  #   key                  = "terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}

# Call the Resource Group Module
module "prod_resource_group" {
  source = "../../modules/resource-group"

  rg_name = var.prod_rg_name
  rg_location = var.prod_rg_location 
}
