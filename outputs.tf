output "storage_account_name" {
  description = "The name of the storage account, usefull to make dependencies in terraform explicit"
  value       = azurerm_storage_account.storage_account.name
}

output "storage_account_id" {
  description = "The Azure ID of the storage account"
  value       = azurerm_storage_account.storage_account.id
}
