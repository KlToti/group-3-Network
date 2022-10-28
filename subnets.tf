resource "aws_subnet" "public" {
    vpc_id = aws_vpc.elk_vpc.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "eu-central-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "elk-public"
    }
}


resource "aws_subnet" "private" {
    vpc_id = aws_vpc.elk_vpc.id
    cidr_block = "192.168.10.0/24"
    availability_zone = "eu-central-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "elk-private"
    }
}