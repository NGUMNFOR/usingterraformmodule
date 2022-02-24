

module "vpcmodule" {
  source = "git@github.com:NGUMNFOR/FirstTerraformproject.git//vpcmodule"

  vpccidr        = "200.0.0.0/16"
  WebsubnetNames = 3
  websubnet_cidr = [for each in range(0, 225, 2) : cidrsubnet("200.0.0.0/16", 8, each)]
  appsubnet_cidr = [for each in range(1, 225, 2) : cidrsubnet("200.0.0.0/16", 8, each)]
  AppsubnetNames = 3 
}
