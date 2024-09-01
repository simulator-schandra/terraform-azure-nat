module "nat" {
  source            = "./module"
  nat_name          = "simulator-nat"
  rg_name           = "simulator-rg"
  nat_location      = "South India"
  create_pip_prefix = false
  tags = {
    "Environment" = "Staging"
  }
}