output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "virtual_machine_ids" {
  value = azurerm_virtual_machine.example[*].id
}

output "network_interface_ids" {
  value = azurerm_network_interface.example[*].id
}
