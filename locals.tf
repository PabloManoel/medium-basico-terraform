locals {
  default_tags = {
    contato_suporte = "suporte@sextatech.com",
    contexto        = "sexta-tech"
    env             = upper(var.environment)
  }
}