data "aws_ami_ids" "ubuntu" {
  owners = ["240563130242"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20180912"]
  }
}
