# ---------------------------------------------------------------------------------------------------------------------
# OTC - Terraform managed File, please don't change as it will overwritten!
# Template: a1_otc_base/variables.tf.tpl
# ---------------------------------------------------------------------------------------------------------------------
# Global Variables
# ---------------------------------------------------------------------------------------------------------------------
variable "global_config" {
  type = object({
    env             = string
    customer_prefix = string
    project         = string
    application     = string
    costcenter      = optional(string, "")
  })
  description = "Global config Object which contains the mandatory informations."
}

# ---------------------------------------------------------------------------------------------------------------------
# Template: a1_otc_base/a1_otc_base.var.tpl
# ---------------------------------------------------------------------------------------------------------------------
variable "otc" {
  type = object({
    otc_source  = string
    otc_version = string
    otc_backend = string
    otc_region  = string
    otc_env     = string
  })
  description = "OTC Variables for Plattform Version & Source (Automaticly set)"
}

variable "customer" {
  type = object({
    customer_name   = string
    customer_prefix = string
    github = object({
      gh_base_url = string
      gh_oidc_url = string
      gh_org      = string
      gh_runner   = string
    }),
    customer_optional_settings = optional(any, {})
  })
  description = "OTC Variable for Customer (Automaticly set)"
}

variable "project" {
  type = object({
    project_name      = string
    application_name  = string
    project_type      = string
    state             = optional(string, "active")
    owners            = list(string)
    gh_visibility     = string
    aws_cloud_enabled = bool
    azr_cloud_enabled = bool
    gcp_cloud_enabled = bool
    aws_regions       = optional(list(string), [])
    azr_regions       = optional(list(string), [])
    gcp_regions       = optional(list(string), [])

    environments = map(object({
      state                       = optional(string, "apply")
      push_branches               = list(string)
      pull_request                = bool
      workflow_dispatch           = bool
      release_published           = bool
      custom_environment_settings = optional(any, {})
      auto_tfvars                 = optional(any, {})
    }))
  })
  description = "OTC Variable for Project (Automaticly set)"
}

variable "blueprints" {
  type = map(object({
    settings = optional(list(object({
      setting = optional(string)
      value   = optional(list(string))
      }))
    , [])
  }))
  default = {}
  description = "OTC Variable for Blueprints (Automaticly set)"
}

# ---------------------------------------------------------------------------------------------------------------------
# Template: hello_world/hello_world.var.tpl
# ---------------------------------------------------------------------------------------------------------------------
variable "custom" {
  default     = ""
  type        = string
  description = "Custom Hello World"
}

