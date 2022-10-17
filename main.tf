resource "azurerm_resource_group" "resource_group1" {
  name       = "fromterraform1"
  location   = "east us"
  tags       =  {
     Project = "qtlearning",
     env     = "dev"

  }
}

resource "azurerm_storage_account" "my_storage_acc" {
  name                     = "mystorageaccountoct17"
  resource_group_name      = "fromterraform1"
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "GRS"
   tags                    =  {
     Project               = "qtlearning",
     env                   = "dev"

  }

}
