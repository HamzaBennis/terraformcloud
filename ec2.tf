provider "aws" {
  region     = "us-east-1"

}

resource "aws_instance" "myec2" {
  ami           = "ami-0083662ba17882949"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
  type = map(any)

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"
  }
}
