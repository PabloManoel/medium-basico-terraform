module "basic_setup_module" {
    source = "./modules/basic_setup"

    environment = var.environment
    bucket_name = var.bucket_name
    instance_name = var.instance_name
}