resource "azurerm_resource_group" "rg" {
  name     = "cloud-resume-rg"
  location = "Central India"
}


resource "azurerm_storage_account" "resume_storage" {
  name                     = "ridharesumestorage"  # change if needed
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document = "index.html"
  }

  tags = {
    project = "cloud-resume"
    owner   = "ridha"
  }
}