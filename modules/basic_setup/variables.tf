variable "default_tags" {
  type = map(string)
  default = {
    contato_suporte = "suporte@sextatech.com",
    contexto        = "sexta-tech"
  }
}

variable "environment" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "instance_name" {
  type = string
}