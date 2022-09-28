resource "aws_internet_gateway" "Internet_Gateway" {
  vpc_id = aws_vpc.customvpc.id
  tags = {
    Name = "Internet_Gateway"
  }
}
