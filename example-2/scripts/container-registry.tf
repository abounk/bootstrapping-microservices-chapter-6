# Creates a container registry on Azure so that you can publish your Docker images.

resource "azurerm_container_registry" "container_registry" {
  name                = "flixtube6031"
  resource_group_name = azurerm_resource_group.flixtube.name
  location            = "westus"
  admin_enabled       = true
  sku                 = "Basic"
}

output "registry_hostname" {
  value = azurerm_container_registry.container_registry.login_server
  sensitive = true
}

output "registry_un" {
  value = azurerm_container_registry.container_registry.admin_username
  sensitive = true
}

output "registry_pw" {
  value = azurerm_container_registry.container_registry.admin_password
  sensitive = true
}
