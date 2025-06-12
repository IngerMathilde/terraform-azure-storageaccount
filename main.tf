resource "azurerm_storage_account" "storage_account" {
  location            = var.location
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
  account_tier        = var.account_tier

  account_replication_type = "LRS"

  # This disables public access (required by policy)
  public_network_access_enabled = "false"

  # Needed for security
  min_tls_version = "TLS1_2"

  # general parameters
  tags = var.tags
}
