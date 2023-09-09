<!-- OTC-HEADER-START -->
# otc-demo-aws-managed-v1
<p align=right>⚙ 09.09.2023</p>
<details>
<summary>Table of contents</summary>


- [Project Info](#project-info)
- [Terraform Docs](#terraform-docs)
  * [Requirements](#requirements)
  * [Providers](#providers)
  * [Modules](#modules)
  * [Resources](#resources)
  * [Inputs](#inputs)
  * [Outputs](#outputs)
</details>
<!-- OTC-HEADER-END -->

# Project Info

This is the Repository for ontracon GmbH for the project demo / aws-managed.

Project owners:
- `jkritzen`

Status: `active`

Clouds: `AWS`  

___

The Project `demo` is enabled for the following Blueprints:

Blueprint  | Version |Description  | Mandatory | Services
-----------|---------|-------------|-----------|----------
OTC Base | v1.0.0 | Basic OTC Setup (eg. terraform files, workflows, backends, ...).|  ✔  | `Base Repo Setup`
Hello world example | v1.0.0 | Only a Hello World example which will only outputs a hello_world String.|  ✗  | `hello_world`
___

Configured environments:
Environment | Trigger on PR | Manual Trigger | Push Branches | On release
------------|---------------|----------------|---------------|-----------
int (suspend)|✔|✗|✗|✗
prd (suspend)|✗|✗|✗|✔

<!-- OTC-FOOTER-START -->
# Terraform Docs

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>4 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_base"></a> [aws\_base](#module\_aws\_base) | git::https://github.com/otc-code/otc-blue-aws-base.git | v1.0.0 |
| <a name="module_hello_world"></a> [hello\_world](#module\_hello\_world) | git::https://github.com/otc-code/otc-blue-hello.git | v1.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_blueprints"></a> [blueprints](#input\_blueprints) | OTC Variable for Blueprints (Automaticly set) | <pre>map(object({<br>    settings = optional(list(object({<br>      setting = optional(string)<br>      value   = optional(list(string))<br>      }))<br>    , [])<br>  }))</pre> | `{}` | no |
| <a name="input_custom"></a> [custom](#input\_custom) | Custom Hello World | `string` | `""` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | OTC Variable for Customer (Automaticly set) | <pre>object({<br>    customer_name   = string<br>    customer_prefix = string<br>    github = object({<br>      gh_base_url = string<br>      gh_oidc_url = string<br>      gh_org      = string<br>      gh_runner   = string<br>    }),<br>    customer_optional_settings = optional(any, {})<br>  })</pre> | n/a | yes |
| <a name="input_global_config"></a> [global\_config](#input\_global\_config) | Global config Object which contains the mandatory informations. | <pre>object({<br>    env             = string<br>    customer_prefix = string<br>    project         = string<br>    application     = string<br>    costcenter      = optional(string, "")<br>  })</pre> | n/a | yes |
| <a name="input_otc"></a> [otc](#input\_otc) | OTC Variables for Plattform Version & Source (Automaticly set) | <pre>object({<br>    otc_source  = string<br>    otc_version = string<br>    otc_backend = string<br>    otc_region  = string<br>    otc_env     = string<br>  })</pre> | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | OTC Variable for Project (Automaticly set) | <pre>object({<br>    project_name      = string<br>    application_name  = string<br>    project_type      = string<br>    state             = optional(string, "active")<br>    owners            = list(string)<br>    gh_visibility     = string<br>    aws_cloud_enabled = bool<br>    azr_cloud_enabled = bool<br>    gcp_cloud_enabled = bool<br>    aws_regions       = optional(list(string), [])<br>    azr_regions       = optional(list(string), [])<br>    gcp_regions       = optional(list(string), [])<br><br>    environments = map(object({<br>      state                       = optional(string, "apply")<br>      push_branches               = list(string)<br>      pull_request                = bool<br>      workflow_dispatch           = bool<br>      release_published           = bool<br>      custom_environment_settings = optional(any, {})<br>      auto_tfvars                 = optional(any, {})<br>    }))<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hello"></a> [hello](#output\_hello) | Only a hello world |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the AWS VPC |
<!-- END_TF_DOCS -->
<p align=right>Updated: https://github.com/Ontracon/otc-demo-aws-managed-v1/actions/runs/6127716509</p>
<!-- OTC-FOOTER-END -->
