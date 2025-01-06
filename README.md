Azure NAT Terraform module
=====================================

This module is used to deploy Azure NAT resource on Azure cloud using Terraform.

Prerequisites
--------------
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

Requirements
------------

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.8 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.0.1 |


Usage
------

```hcl
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features {}
}

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

```

Inputs
------


| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| **rg_name** | Resource group name | `string` | `NA` | yes |
| **nat_name** | NAT name | `string` | `NA` | yes |
| **nat_location** | NAT location | `string` | `NA` | yes |
| **create_pip_prefix** | Set to true to create a public ip prefix. Defaults to false | `string` | `NA` | no |
| **tags** | Additional tags associated with the resource (*Name tag will be automatically deployed* )| `string` | `NA` | no |

Outputs
--------

| Name | Description |
|------|-------------|
| **nat_id** | NAT id |
| **nat_pip_id** | NAT public ip id |
| **nat_pip_prefix_id** | NAT public ip prefix id |

Revision History 
----------------

### Contributors

- Created by [Suyash Chandra](https://github.com/suyash1610)