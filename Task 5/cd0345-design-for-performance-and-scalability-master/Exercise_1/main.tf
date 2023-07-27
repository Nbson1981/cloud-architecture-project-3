# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity-t2" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b4998d861a21dc67"
  count = 4
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "udacity-m4" {
#   ami = "ami-0323c3dd2da7fb37d"
#   instance_type = "m4.large"
#   subnet_id = "subnet-0b4998d861a21dc67"
#   count = 2
#   tags = {
#     Name = "Udacity M4"
#   }
# }