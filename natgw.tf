resource "aws_eip" "eip" {
  vpc = true
  tags = {
    Name = "eip"
  }
}

resource "aws_nat_gateway" "natgateway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.pub-sub-1.id
  tags = {
    Name = "natgateway"
  }
}
