terraform {
  required_providers {
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "1.2.28"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.0"
    }
  }
}


provider "azurerm" {
  features {}
}

provider "azurecaf" {
}

# Create a random name for the parent resource group
module "naming" {
  source  = "Azure/naming/azurerm"
  version = "~> 0.3"
}

# create the parent resource group
resource "azurerm_resource_group" "this" {
  location = "westus"
  name     = module.naming.resource_group.name
}

module "test" {
  depends_on = [azurerm_resource_group.this]
  source     = "../../"
  # Add your module configuration here

  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  project             = "tftest"
}
