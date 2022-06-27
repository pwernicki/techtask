resource "aws_vpc" "custom_vpc" {
  cidr_block            = var.vpc_cidr
  enable_dns_support    = "true"
  enable_dns_hostnames  = "true"
}

resource "aws_internet_gateway" "IGW" {   
  vpc_id =  aws_vpc.custom_vpc.id
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.custom_vpc.id
    cidr_block = var.public_cidr
    map_public_ip_on_launch = "true"
    availability_zone = var.availability_zone 
}

resource "aws_route_table" "public-rt" {
    vpc_id = aws_vpc.custom_vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.IGW.id
    }
}

resource "aws_route_table_association" "public_rta"{
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.public-rt.id
}
