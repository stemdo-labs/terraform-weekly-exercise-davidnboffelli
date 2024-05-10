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
  subscription_id = "${{ secrets.SUBSCRIPTION_ID }}"
  client_id       = "${{ secrets.CLIENT_ID }}"
  client_secret   = "${{ secrets.CLIENT_SECRET }}"
  tenant_id       = "${{ secrets.TENANT_ID }}"
}

module "weekly_exercise" {
  source = "github.com/stemdo-labs/terraform-exercises-davidnboffelli-1/soluciones/modulo-weekly-exercise"
  #source = "../../../terraform-exercises-davidnboffelli-1/soluciones/modulo-weekly-exercise/"
  existent_resource_group_name = var.existent_resource_group_name
  location = var.location
  maquinasvirtuales = var.maquinasvirtuales
}

#resource "azurerm_storage_container" "tfstate" {
#  name                  = "tfstateweekly"
#  storage_account_name  = "sta1dnazareno"
#  container_access_type = "private"
#}
