terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.32"
    }

    github = {
      source  = "integrations/github"
      version = "~> 5.10"
    }
  }

  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name  = "operations"
    storage_account_name = "profianterraform"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}
