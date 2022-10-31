
##VPC Internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.elk_vpc.id

  tags = {
    Name = "elk-igw"
  }
}


#AWS_EIP
resource "aws_eip" "nat_eip" {
  vpc = true
}

##Public NAT gateway


resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "gw_NAT"
  }
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}