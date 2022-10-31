resource "aws_vpc" "elk_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
      Name = "elk-project-vpc"
  }
}