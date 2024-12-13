module "basic_setup_module" {
    source = "git::https://github.com/PabloManoel/medium-basico-terraform.git?ref=basic_setup_module"

    environment = var.environment
    bucket_name = var.bucket_name
    instance_name = var.instance_name
}