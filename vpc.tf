resource "aws_vpc" "DemoBasicVPC" {
  cidr_block           = "10.25.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "DevTFVPC"
  }
}

resource "aws_internet_gateway" "DemoBasicIGW" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  tags = {
    "Name" = "DevTFIGW"
  }
}

resource "aws_subnet" "DemoSubnet-1" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  cidr_block = "10.25.1.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    "Name" = "DevTFSubnet-1"
  }
}
resource "aws_subnet" "DemoSubnet-2" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  cidr_block = "10.25.2.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    "Name" = "DevTFSubnet-2"
  }
}


resource "aws_subnet" "DemoSubnet-4" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  cidr_block = "10.25.4.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    "Name" = "DevTFSubnet-4"
  }
}
resource "aws_subnet" "DemoSubnet-3" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  cidr_block = "10.25.3.0/24"
  availability_zone = "ap-south-1c"
  tags = {
    "Name" = "DevTFSubnet-3"

  }
}