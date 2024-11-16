resource "random_integer" "ri" {
  min = 100
  max = 999
}

resource "azurerm_resource_group" "main" {
  name     = "rg-news-app"
  location = var.location
  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_account" "main" {
  name                     = "sanewsapp${random_integer.ri.result}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


