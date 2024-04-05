provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "web_app" {
  name     = var.res_grp_name
  location = var.res_grp_location
}
resource "azurerm_service_plan" "web_app" {
  name                = var.app_service_plan
  location            = azurerm_resource_group.web_app.location
  resource_group_name = azurerm_resource_group.web_app.name
  os_type             = var.os_type
  sku_name =var.sku_name
}
resource "azurerm_linux_web_app" "web_app" {
  name                = var.web_app_name
  location            = azurerm_resource_group.web_app.location
  resource_group_name = azurerm_resource_group.web_app.name
  service_plan_id = azurerm_service_plan.web_app.id
  site_config {
    always_on = false
    application_stack {
        java_version = var.java_version
        java_server=var.java_server
        java_server_version = var.java_server_version


    }    
  }
}
