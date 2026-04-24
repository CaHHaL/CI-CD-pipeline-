provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0f58b397bc5c1f2e8" # Ubuntu (Mumbai)
  instance_type = "t2.micro"

  security_groups = ["default"]

  tags = {
    Name = "CI-CD-Server"
  }
}