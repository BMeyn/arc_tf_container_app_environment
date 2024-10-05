# Arclytics Terraform module template

This repository contains a template for creating Terraform modules to accelerate the development of infrastructure as code (IaC) projects. The templates includes basic Terraform configuration files, a Makefile, a basic setup for testing with TerraTest. The repository also includes a GitHub Actions workflow for continuous integration and continuous deployment (CI/CD) to deploy the Terraform configuration to Azure.

## Repository structure

The repository contains the following files and directories:

- `.github/workflows` - Contains the GitHub Actions workflow files.
- `.devcontainer` - Contains the configuration files for the Visual Studio Code devcontainer.
- `modules` - Contains the Terraform submodules (if required).
- `examples` - Contains example Terraform configuration files of the developed module.
- `docs` - Contains the documentation files for the module. 
- `test` - The directory containing the TerraTest test files.

## Module development

The idea behind this repository is to provide a template for developing Terraform modules that all follow a similar structure. Therefore there are a few guidlines that should be followed when developing a module.

### Standard Terraform files

- `data.tf` - The Terraform data sources file.
- `main.tf` - The main Terraform configuration file.
- `variables.tf` - The Terraform variables file.
- `outputs.tf` - The Terraform outputs file.

### Predefined variables
Additionally, there are a few predefined variables to have a similar structure across all modules:

- `resource_group_name` - The name of the resource group.
- `location` - The location of the resources.
- `environment` - The environment of the resources. (like. dev, tst, prd)
- `project` - An arbitrary project name.

### Modules examples

The `examples` directory contains example Terraform configuration files that demonstrate how to use the developed module. The examples should be well documented and provide a clear understanding of how to use the module.

### Testing

In the `test` directory, you can find the TerraTest test files. The basic test setup make use of the provided examples the test if the module can be applied without errors. Please feel free to add more tests to the test files.

## Using the Devcontainer

1. Open the repository in Visual Studio Code.
2. When prompted, reopen the repository in the devcontainer.
3. The devcontainer will automatically install the required tools, including the Azure Developer CLI and Terraform.


## CICD Configuration

1. Add the `AZURE_CREDENTIALS` environment variable to your GitHub repository secrets. You can do this by navigating to the repository settings, selecting "Secrets", and adding a new secret with the name `AZURE_CREDENTIALS` and the JSON output as the value.

## Configuring the AZURE_CREDENTIALS environment variable

1. Obtain your Azure credentials in JSON format. You can do this by running the following Azure CLI command:
   ```
   az ad sp create-for-rbac --sdk-auth
   ```
2. Copy the JSON output from the command.
3. Set the `AZURE_CREDENTIALS` environment variable with the JSON output. You can do this by running the following command:
   ```
   export AZURE_CREDENTIALS='<json-output>'
   ```
4. Add the `AZURE_CREDENTIALS` environment variable to your GitHub repository secrets. You can do this by navigating to the repository settings, selecting "Secrets", and adding a new secret with the name `AZURE_CREDENTIALS` and the JSON output as the value.

