resource "aws_vpc" "main" {
  cidr_block = var.cidr
  tags = {
    Name = "fargat-${var.environment}"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "fargat-${var.environment}"
  }
}