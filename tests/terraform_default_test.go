package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformDefaultExample(t *testing.T) {
	// Define the path to the Terraform code that will be tested.
	terraformOptions := &terraform.Options{
		TerraformDir: "../examples/default",
	}

	// Clean up resources with "terraform destroy" at the end of the test.
	defer terraform.Destroy(t, terraformOptions)

	// Run "terraform init" and "terraform apply". Fail the test if there are any errors.
	terraform.InitAndApply(t, terraformOptions)

	// Run "terraform plan" and fail the test if there are any errors.
	planOutput := terraform.Plan(t, terraformOptions)
	if planOutput == "" {
		t.Fatal("Plan output is empty")
	}
}
