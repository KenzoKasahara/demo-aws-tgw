# ##################################
# Internet Gateway
# ##################################
resource "aws_internet_gateway" "vpc_a_igw" {
  tags = {
    Name = "VPC-A-igw"
  }
  vpc_id = aws_vpc.vpc_a_vpc.id
}