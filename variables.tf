variable "location" {
  description = "The region to deploy the storage account into"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group to deploy the Storage Account into"
  type        = string
}

variable "tags" {
  description = "Optional, tags to add to the storage account"
  type        = map(string)
  default     = {}
}

variable "storage_account_name" {
  description = "The name of the Storage Account"
  type        = string

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && can(regex("^[a-z0-9]*$", var.storage_account_name))
    error_message = "The storage account name must be between 3 and 24 characters in length and consist of only lowercase letters and numbers."
  }
}

variable "account_tier" {
  description = "The account tier for the storage account"
  type        = string
  default     = "Standard"
}
