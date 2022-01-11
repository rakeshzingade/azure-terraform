remote_state {
    backend = "azurerm"
    generate = {
      path      = "backend.tf"
      if_exists = "overwrite_terragrunt"
    }
    config = {
      key                  = "${path_relative_to_include()}/terraform.tfstate"
      resource_group_name  = "demo-useast-state-rg"
      storage_account_name = "demostatestore"
      container_name       = "demo-useast-container"
    }
}

inputs = { 
   location = "eastus" 
}     

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "azurerm" {
  features {}
}
EOF
}
