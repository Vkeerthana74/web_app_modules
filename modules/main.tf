terraform{
  backend "azurerm"{
    resource_group_name = "vmresourcegrp"
    storage_account_name = "stracckee"
    container_name = "tfstatecontainer"
    key = "terraformstate"

  
  }
}
terraform { 
  required_providers { 
    azurerm = { 
      source = "hashicorp/azurerm" 
      version = ">= 2.0" 
    } 
  }                                                                   
} 
module "main" {   
    source = "./child"
}