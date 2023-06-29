resource "azurerm_private_endpoint" "this" {
  name                          = "my-private-endpoint"
  location                      = "eastus"
  resource_group_name           = "my-resource-group"
  subnet_id                     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"
  custom_network_interface_name = "my-network-interface"

  private_service_connection {
    name                           = "my-private-service-connection"
    is_manual_connection           = false
    private_connection_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Storage/storageAccounts/my-storage-account"
    subresource_names              = ["blob"]
  }

  private_dns_zone_group {
    name                 = "my-private-dns-zone-group"
    private_dns_zone_ids = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/privateDnsZones/my-privatednszone"]
  }

  tags = {
    environment = "dev"
    cost_center = "12345"
  }
}