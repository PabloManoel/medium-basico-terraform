locals {
  default_tags = {
    contato_suporte = "suporte@sextatech.com",
    contexto        = "sexta-tech"
    env             = upper(var.environment)
  }

  ec2_tags = merge({
    Name = "my-custom-instance",
    vpc_id = data.aws_vpc.default.id
  }, local.default_tags)
}