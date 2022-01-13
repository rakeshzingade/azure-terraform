output "resource_group_name" {
  description = "The name of the resource group in which resources are created"
  value       = module.vnet.resource_group_name
}

output "resource_group_id" {
  description = "The id of the resource group in which resources are created"
  value       = module.vnet.resource_group_id
}

output "resource_group_location" {
  description = "The location of the resource group in which resources are created"
  value       = module.vnet.resource_group_location
}

#VNet and Subnets 
output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = module.vnet.virtual_network_name
}

output "virtual_network_id" {
  description = "The id of the virtual network"
  value       = module.vnet.virtual_network_id
}

output "virtual_network_address_space" {
  description = "List of address spaces that are used the virtual network."
  value       = module.vnet.virtual_network_address_space
}
