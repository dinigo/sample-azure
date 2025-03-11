variable "resource_group_location" {
  type    = string
  default = "westeurope"
}

variable "repository_token" {
  type      = string
  sensitive = true
}

variable "app_name" {
  type = string
}

variable "repository_url" {
  type = string
}

variable "app_repo_branch" {
  default = "main"
  type    = string
}
