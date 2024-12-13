resource "aws_instance" "minha_instancia_ec2" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"

  tags = merge(local.default_tags, { Name = "my-custom-instance", vpc_id = data.aws_vpc.default.id })
}

resource "aws_s3_bucket" "meu-bucket-s3" {
  bucket = "sexta-tech-example"

  tags = local.default_tags
}