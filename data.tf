# tflint-ignore: terraform_unused_declarations
data "azurerm_resource_group" "parent" {
  name = var.resource_group_name
}
