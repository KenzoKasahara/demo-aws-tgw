# ##################################
# Transit Gateway 
# ##################################
resource "aws_ec2_transit_gateway" "vpc_a_b_c_tgw" {
  amazon_side_asn                 = 64512
  auto_accept_shared_attachments  = "disable"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  description                     = null
  dns_support                     = "enable"
  multicast_support               = "disable"
  tags = {
    Name = "VPC-A-B-C-TGW"
  }
  transit_gateway_cidr_blocks = []
  vpn_ecmp_support            = "enable"
}

# ##################################
# Transit Gateway Attachment
# ##################################
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_a_tgw_attach" {
  appliance_mode_support = "disable"
  dns_support            = "enable"
  ipv6_support           = "disable"
  subnet_ids             = [aws_subnet.vpc_a_subnet_private1_us_east_1a.id]
  tags = {
    Name = "VPC-A-TGW-ATTACH"
  }
  transit_gateway_default_route_table_association = true
  transit_gateway_default_route_table_propagation = true
  transit_gateway_id                              = aws_ec2_transit_gateway.vpc_a_b_c_tgw.id
  vpc_id                                          = aws_vpc.vpc_a_vpc.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_b_tgw_attach" {
  appliance_mode_support = "disable"
  dns_support            = "enable"
  ipv6_support           = "disable"
  subnet_ids             = [aws_subnet.vpc_b_subnet_private1_us_east_1a.id]
  tags = {
    Name = "VPC-B-TGW-ATTACH"
  }
  transit_gateway_default_route_table_association = true
  transit_gateway_default_route_table_propagation = true
  transit_gateway_id                              = aws_ec2_transit_gateway.vpc_a_b_c_tgw.id
  vpc_id                                          = aws_vpc.vpc_b_vpc.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_c_tgw_attach" {
  appliance_mode_support = "disable"
  dns_support            = "enable"
  ipv6_support           = "disable"
  subnet_ids             = [aws_subnet.vpc_c_subnet_private1_us_east_1a.id]
  tags = {
    Name = "VPC-C-TGW-ATTACH"
  }
  transit_gateway_default_route_table_association = true
  transit_gateway_default_route_table_propagation = true
  transit_gateway_id                              = aws_ec2_transit_gateway.vpc_a_b_c_tgw.id
  vpc_id                                          = aws_vpc.vpc_c_vpc.id
}

# ##################################
# Transit Gateway Route Table
# ##################################
# resource "aws_ec2_transit_gateway_route_table" "vpc_a_b_c_tgw_rt" {
#   tags = {
#     Name = "VPC-A-B-C-TGW-RT"
#   }
#   transit_gateway_id = aws_ec2_transit_gateway.vpc_a_b_c_tgw.id
# }