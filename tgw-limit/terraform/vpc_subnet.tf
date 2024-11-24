# ##################################
# Subnet
# ##################################
resource "aws_subnet" "vpc_a_subnet_public_us_east_1a" {
  assign_ipv6_address_on_creation                = false
  availability_zone_id                           = "use1-az2"
  cidr_block                                     = "10.0.0.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "VPC-A-subnet-public1-us-east-1a"
  }
  vpc_id = aws_vpc.vpc_a_vpc.id
}

resource "aws_subnet" "vpc_a_subnet_private1_us_east_1a" {
  assign_ipv6_address_on_creation                = false
  availability_zone_id                           = "use1-az2"
  cidr_block                                     = "10.0.128.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "VPC-A-subnet-private1-us-east-1a"
  }
  vpc_id = aws_vpc.vpc_a_vpc.id
}

resource "aws_subnet" "vpc_b_subnet_private1_us_east_1a" {
  assign_ipv6_address_on_creation                = false
  availability_zone_id                           = "use1-az2"
  cidr_block                                     = "10.1.128.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "VPC-B-subnet-private1-us-east-1a"
  }
  vpc_id = aws_vpc.vpc_b_vpc.id
}

resource "aws_subnet" "vpc_c_subnet_private1_us_east_1a" {
  assign_ipv6_address_on_creation                = false
  availability_zone_id                           = "use1-az2"
  cidr_block                                     = "10.2.128.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "VPC-C-subnet-private1-us-east-1a"
  }
  vpc_id = aws_vpc.vpc_c_vpc.id
}