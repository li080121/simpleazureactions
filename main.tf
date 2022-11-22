terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">=0.13, <0.14"
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo"
    storage_account_name = "terraformcodeops1"
    container_name       = "tfstatefile"
    key                  = "simple.terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup99"
  location = "eastus"
}
