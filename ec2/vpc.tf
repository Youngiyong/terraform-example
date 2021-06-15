resource "aws_vpc" "main" {
  cidr_block = "172.10.0.0/20"

  tags = {
    Name = "terraform-giyong"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "172.10.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "terraform-giyong-public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "172.10.1.0/24"
  availability_zone = "ap-northeast-2b"
  tags = {
    Name = "terraform-giyong-private-subnet"
  }
}

