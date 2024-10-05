init:
	@terraform init && tflint --init

# install git pre commit hooks
git-hooks:
	@pre-commit install

tflint:
	@tflint --recursive --config "$(shell pwd)/.tflint.hcl"

# generate docs for the root module and all modules inside the modules directory.
tfdocs:
	@terraform-docs modules -c .terraform-docs-modules.yml && terraform-docs . -c .terraform-docs-root.yml

format:
	@terraform fmt

terratest-init:
	@cd tests && go mod tidy

test:
	@cd tests && go test -v -timeout 30m
