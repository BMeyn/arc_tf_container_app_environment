# Terrafrom Module Guidelines

## Resource Naming Guidelines

Azure resources should be named according to the following guidelines:

- `<resource_abbreviation>-<project>-<environment>`

For example, a storage account in the `dev` environment for the `myproject` project would be named `sa-myproject-dev`. The modules should enforce this naming convention by using the `project` and `environment` variables as part of the resource names. Additionally the `azurecaf` provider should be used to enforce the standard naming convention. Here is an example how the use the `azurecaf` provider and the predefined variables to enforce the naming convention:

```hcl
resource "azurecaf_naming_convention" "caf_storage_account_name" {  
  name             = var.project
  resource_type    = "azurerm_storage_account"
  suffix           = [var.environment]
  random_length    = 4
  clean_input      = true
}
```

