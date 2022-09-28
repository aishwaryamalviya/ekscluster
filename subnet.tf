resource "aws_subnet" "pub-sub-1" {
  vpc_id            = aws_vpc.customvpc.id
  cidr_block        = "10.0.0.0/20"
  availability_zone = "us-east-1a"
  tags = {
    Name = "pub-sub-1"
  }
}
resource "aws_subnet" "pub-sub-2" {
  vpc_id            = aws_vpc.customvpc.id
  cidr_block        = "10.0.16.0/20"
  availability_zone = "us-east-1b"
  tags = {
    Name = "pub-sub-2"
  }
}
resource "aws_subnet" "private-sub-1" {
  vpc_id            = aws_vpc.customvpc.id
  cidr_block        = "10.0.32.0/20"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private-sub-1"
  }
}
resource "aws_subnet" "private-sub-2" {
  vpc_id            = aws_vpc.customvpc.id
  cidr_block        = "10.0.48.0/20"
  availability_zone = "us-east-1b"
  tags = {
    Name = "private-sub-2"
  }
}
