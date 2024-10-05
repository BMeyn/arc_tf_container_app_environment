# tflint-ignore: terraform_unused_declarations
variable "environment" {
  description = "The name of the environment"
  type        = string
  default     = "dev"
}

# tflint-ignore: terraform_unused_declarations
variable "location" {
  description = "Azure region where the resource should be deployed."
  type        = string
}

# tflint-ignore: terraform_unused_declarations
variable "project" {
  description = "The name of the project"
  type        = string
}

# This is required for most resource modules
# tflint-ignore: terraform_unused_declarations
variable "resource_group_name" {
  type        = string
  description = "The resource group where the resources will be deployed."
}
