provider "azurerm" {
    subscription_id = "63624c86-fe10-49d1-b0c7-b5b0be84da6a"
    client_id = "27ed852a-f10d-41bc-951c-d12bca932c28"
    client_secret = "Wvi8Q~13MgHl609Cm6Ba6F-774N3uUnk5dECGb0F"
    tenant_id = "7270ce39-4b64-4579-8f7f-93639d71f1ca"

    features {
      
    }
  
}
resource "azurerm_resource_group" "terrformad1" {
   name = "adi-p12"
   location = "eastus2"
}

resource "azurerm_storage_account" "adi1" {
    name = "aditya"
    resource_group_name = "adi-p12"
    location = "eastus2"
    account_tier = "Standard"
    account_replication_type = "LRS"
    depends_on = [ azurerm_resource_group.terrformad1 ]
 
}