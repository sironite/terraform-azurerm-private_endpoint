<!-- BEGIN_TF_DOCS -->
 # Private Endpoint
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-private_endpoint/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint)

# Usage - Module

## Private Endpoint
```hcl
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
```

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_endpoint.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| custom\_network\_interface\_name | The name of the custom network interface. | `string` | yes |
| location | The location of the private endpoint. | `string` | yes |
| private\_connection\_resource\_id | The ID of the private connection resource. | `string` | yes |
| private\_dns\_zone\_group\_name | The name of the private DNS zone group. | `string` | yes |
| private\_dns\_zone\_ids | The IDs of the private DNS zones. | `list(string)` | yes |
| private\_endpoint\_name | The name of the private endpoint. | `string` | yes |
| private\_service\_connection\_name | The name of the private service connection. | `string` | yes |
| resource\_group\_name | The name of the resource group. | `string` | yes |
| subnet\_id | The ID of the subnet. | `string` | yes |
| subresource\_names | The names of the subresources. | `list(string)` | yes |
| is\_manual\_connection | Whether the private service connection is manual or not. | `bool` | no |
| tags | The tags to apply to the private endpoint. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| private\_endpoint\_fqdn | The FQDN of the private endpoint. |
| private\_endpoint\_id | The ID of the private endpoint. |
| private\_endpoint\_name | The name of the private endpoint. |

## Related documentation
<!-- END_TF_DOCS -->