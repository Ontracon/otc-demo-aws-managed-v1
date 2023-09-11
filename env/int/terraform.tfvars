# ---------------------------------------------------------------------------------------------------------------------
# tfvars a1_otc_base/terraform.tfvars.tpl for int
# ---------------------------------------------------------------------------------------------------------------------
# Global Config
# ---------------------------------------------------------------------------------------------------------------------
global_config = {
  customer_prefix = "otc"
  env             = "int"
  project         = "demo"
  application     = "aws-managed-v1"
}


# ---------------------------------------------------------------------------------------------------------------------
# hello_world - Variables
# ---------------------------------------------------------------------------------------------------------------------
custom = "Example String"
