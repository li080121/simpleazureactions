terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
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
