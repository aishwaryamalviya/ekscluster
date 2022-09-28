resource "aws_vpc" "customvpc" {
  cidr_block = "10.0.0.0/18"
  tags = {
    Name = "customvpc"
  }
}
