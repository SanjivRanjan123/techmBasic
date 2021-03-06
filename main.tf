##*Subject -  Create myql


#Add Azure Provider
provider "azurerm" {
    





    features {}
}


#Create Resource Group
resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.location
}

# Create Mysql server
resource "azurerm_mysql_server" "mysqlser" {
  name                = var.azurerm_mysql_server
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  sku_name   = "B_Gen5_2"
  storage_mb = 5120
  version    = "5.7"

  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = false
  infrastructure_encryption_enabled = false
  public_network_access_enabled     = true
  ssl_enforcement_enabled           = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
}

# Create my sql database
resource "azurerm_mysql_database" "mysqldb" {
  name                = var.azurerm_mysql_database
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mysql_server.mysqlser.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}


