resource "azurerm_container_registry" "acr" {
    name = "acr${ lower(var.project) }${ var.environment }jey"
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    sku = "Basic"

    admin_enabled = true

    tags = var.tags

}