variable "private_endpoint_name" {
  type        = string
  description = "The name of the private endpoint."
}

variable "location" {
  type        = string
  description = "The location of the private endpoint."

}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet."
}

variable "custom_network_interface_name" {
  type        = string
  description = "The name of the custom network interface."
}

variable "private_service_connection_name" {
  type        = string
  description = "The name of the private service connection."
}

variable "is_manual_connection" {
  type        = bool
  description = "Whether the private service connection is manual or not."
  default     = false
}

variable "private_connection_resource_id" {
  type        = string
  description = "The ID of the private connection resource."
}

variable "subresource_names" {
  type        = list(string)
  description = "The names of the subresources."
}

variable "private_dns_zone_group_name" {
  type        = string
  description = "The name of the private DNS zone group."
}

variable "private_dns_zone_ids" {
  type        = list(string)
  description = "The IDs of the private DNS zones."
}

variable "tags" {
  type        = map(string)
  description = "The tags to apply to the private endpoint."
  default     = {}
}