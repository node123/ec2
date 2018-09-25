# provider "aws" {
#	access_key = "AKIAJOQRUEN5RXZLGMZQ"
#	secret_key = "kjeOnhrB4zEdG9m7oJLDbE/Q0hbf2aFWppxfD6Fw"
#	region = "us-east-1"
#}

resource "aws_instance" "example2" {
  ami = "ami-0d34fb1b9dc8b8d2e"
  instance_type = "t2.micro"
tags {
    Name = "terraform-example2"
}

}

