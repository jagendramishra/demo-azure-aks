terraform {
  backend "azurerm" {
    resource_group_name   = "myResourceGroup"
    storage_account_name  = "terraformbackendfordemo"
    container_name        = "tfstatedemo"
    key                   = "terraform.tfstate"
  }
}
