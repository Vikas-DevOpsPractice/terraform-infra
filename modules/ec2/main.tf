
variable "vpc_id" {
  description = "The VPC ID where the EC2 instance will be deployed"
  type        = string
}

resource "aws_instance" "web" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id = module.vpc.subnet_id  # This can be added based on your subnet module
  tags = { Name = "web-instance" }
}

