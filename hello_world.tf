# ---------------------------------------------------------------------------------------------------------------------
# OTC - Terraform managed File, please don't change as it will overwritten!
# Template: hello_world/hello_world.tf.tpl
# ---------------------------------------------------------------------------------------------------------------------
module "hello_world" {
  source = "git::https://github.com/otc-code/otc-blue-hello.git?ref=v1.0.0"
  custom = var.custom
}

output "hello" {
  value       = module.hello_world.hello
  description = "Only a hello world"
}
