resource "aws_instance" "terraform" {
  ami                    = "ami-01e49e57cdc5b6f8d"
  instance_type          = "t3.micro"
  key_name               = "nakacya"
  vpc_security_group_ids = ["sg-0c17badbcbc2c6318"]
  subnet_id              = "subnet-91b257e6"

  tags = {
    Name = "ExampleTerraformInstance"
  }
}

