
module "vnet" {
  source  = "modules/networkmod"
  create_resource_group         = true
  resource_group_name           = "rg-demo-useast-01"
  vnetwork_name                 = "vnet-demo-useast-001"
  location                      = "eastus"
  vnet_address_space            = ["10.1.0.0/16"]

  tags = {
    ProjectName  = "demo-internal"
    Env          = "dev"
    Owner        = "rakeshzingade@gmail.com"
    BusinessUnit = "cloudops-automation"
  }
}

