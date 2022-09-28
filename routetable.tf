resource "aws_route_table" "Public-Subnetvpc-RT" {
  vpc_id = aws_vpc.customvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Internet_Gateway.id
  }

  tags = {
    Name = "Public-Subnetvpc-RT"
  }
}

resource "aws_route_table_association" "RT-IG-Association" {
  subnet_id      = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.Public-Subnetvpc-RT.id
}
resource "aws_route_table_association" "RT-IG-Association-2" {
  subnet_id      = aws_subnet.pub-sub-2.id
  route_table_id = aws_route_table.Public-Subnetvpc-RT.id
}




resource "aws_route_table" "private-Subnetvpc-RT" {
  vpc_id = aws_vpc.customvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgateway.id
  }

  tags = {
    Name = "private-Subnetvpc-RT"
  }
}

resource "aws_route_table_association" "RT-IG-Association-3" {
  subnet_id      = aws_subnet.private-sub-1.id
  route_table_id = aws_route_table.private-Subnetvpc-RT.id
}
resource "aws_route_table_association" "RT-IG-Association-4" {
  subnet_id      = aws_subnet.private-sub-2.id
  route_table_id = aws_route_table.private-Subnetvpc-RT.id
}
