terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "rg1dnazareno-lab01"
      storage_account_name = "sta1dnazareno"
      container_name       = "tfstateweekly"
      key                  = "terraform_weekly.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "weekly_exercise" {
  source = "github.com/stemdo-labs/terraform-exercises-davidnboffelli-1/soluciones/modulo-weekly-exercise"
  #source = "../../../terraform-exercises-davidnboffelli-1/soluciones/modulo-weekly-exercise/"
  existent_resource_group_name = var.existent_resource_group_name
  location = var.location
  maquinasvirtuales = var.maquinasvirtuales
}