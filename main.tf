terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.45.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  subscription_id = "b48675ce-2a2b-4681-bd10-5cd1fa80569a"
}



resource "azurerm_resource_group" "iac11-resourcegroup" {
  name     = var.rg_name
  location = var.rg_location

  tags = {
    batch = "iac10"

  }
}

resource "azurerm_resource_group" "iac11-rgtest" {
  name     = "iac11-tfcloudtest"
  location = var.rg_location

  tags = {
    batch = "iac10"

  }
}


## Drift detection

#State file terraform is managing one resource group == iac11-resource-group   

#compare

#iac11-tf-rg  ===> iac11-tf-rg1 




