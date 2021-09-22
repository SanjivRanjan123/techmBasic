#Variable
# Service Principal Variables

























variable "location" {
    description =   "Location of the resource group"
    type        =   string
    default     =   "East US 2"
}

variable "resource_group_name" {
	description =   "Azure resource group name"
    type        =   string
    default     =   "Basic_devopsb1008"

}
variable "administrator_login" {
    description =   "Username to login to the Mysql"
    type        =   string
    default     =   "vmadmin"
}

variable "administrator_login_password" {
    description =   "Password to login to the mysql"
    type        =   string
    default     =   "VM25Adm1n1t3#"
}
variable "azurerm_mysql_server" {
    description =   "mysql server name"
    type        =   string
    default     =   "basic-mysqlserv"
}
variable "azurerm_mysql_database" {
    description =   "mysql db name"
    type        =   string
    default     =   "basic-mysqldb"
}

 


