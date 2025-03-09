variable "resource_group_location" {
  type        = string
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
}

variable "repository_token" {
  type        = string
  sensitive   = true
}
