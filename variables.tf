variable "default_tags" {
  type = map(string)
  default = {
    contato_suporte = "suporte@sextatech.com",
    contexto        = "sexta-tech"
  }
}

// terraform plan -var-file=inventories/dev/terraform.tfvars
// terraform apply -var-file=inventories/dev/terraform.tfvars -auto-approve

variable "environment" {
  type = string
}