resource "aws_route_table" "DemoBasicRoute" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  tags = {
    "Name" = "DevRoute"
  }
  route {
    gateway_id = aws_internet_gateway.DemoBasicIGW.id
    cidr_block = "0.0.0.0/0"
  }
}

resource "aws_route_table" "DemoBasicPrivateRoute" {
  vpc_id = aws_vpc.DemoBasicVPC.id
  tags = {
    "Name" = "DevRoute-Private"
  }

}