provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATBN23AQ3KXMMM24K"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0083662ba17882949"
  instance_type = "t2.micro"
  key_name      = "devops-dirane"
  tags = {
    Name = "ec2-dirane"
  }
}

