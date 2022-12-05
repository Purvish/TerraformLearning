#Terraform settings block
terraform {
    required_version = ">= 1.0.0"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.0"
        }
    }
}
#Provider block
provider "azurerm" {
  features {}
}
#RG block
resource "azurerm_resource_group" "my_terraform_demo" {
  location = "australiasoutheast"
  name = "my_terraform_demo"
}