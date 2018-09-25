provider "aws" {
        access_key = "AKIAJOQRUEN5RXZLGMZQ"
        secret_key = "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"
        region = "us-east-1"
}

resource "aws_security_group" "tenable" {
        name = "tenable-scanner"
        description = "Web Security Group"
        
        ingress {
                from_port = 22
                to_port = 0
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }
        ingress {
                from_port = 80
                to_port = 0
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

        egress {
                from_port = 0
                to_port = 0
                protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
        }
}
resource "template_file" "web-userdata" {
    filename = "user-data.web"
}

resource "aws_instance" "myweb" {
        ami = "ami-0515a07ee3c09c3a9"
        instance_type = "t2.micro"
        key_name = "web"
        user_data = "${template_file.web-userdata.rendered}"
        tags {
         Name = "myweb"
        }
}
