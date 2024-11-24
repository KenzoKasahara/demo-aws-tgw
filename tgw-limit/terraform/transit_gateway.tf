# ##################################
# Transit Gateway
# ##################################
resource "aws_ec2_transit_gateway" "vpc_a_b_c_tgw_no_default_route" {
  amazon_side_asn                 = 64512
  auto_accept_shared_attachments  = "disable"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"
  description                     = null
  dns_support                     = "enable"
  multicast_support               = "disable"
  tags = {
    Name = "VPC-A-B-C-TGW-no-default-route"
  }
  transit_gateway_cidr_blocks = []
  vpn_ecmp_support            = "enable"
}


# ##################################
# Transit Gateway Attachment
# ##################################
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_a_tgw_attach_no_default_route" {
  appliance_mode_support = "disable"
  dns_support            = "enable"
  ipv6_support           = "disable"
  subnet_ids             = [aws_subnet.vpc_a_subnet_private1_us_east_1a.id]
  tags = {
    Name = "VPC-A-TGW-ATTACH-no-default-route"
  }
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  transit_gateway_id                              = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
  vpc_id                                          = aws_vpc.vpc_a_vpc.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_b_tgw_attach_no_default_route" {
  appliance_mode_support = "disable"
  dns_support            = "enable"
  ipv6_support           = "disable"
  subnet_ids             = [aws_subnet.vpc_b_subnet_private1_us_east_1a.id]
  tags = {
    Name = "VPC-B-TGW-ATTACH-no-default-route"
  }
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  transit_gateway_id                              = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
  vpc_id                                          = aws_vpc.vpc_b_vpc.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_c_tgw_attach_no_default_route" {
  appliance_mode_support = "disable"
  dns_support            = "enable"
  ipv6_support           = "disable"
  subnet_ids             = [aws_subnet.vpc_c_subnet_private1_us_east_1a.id]
  tags = {
    Name = "VPC-C-TGW-ATTACH-no-default-route"
  }
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  transit_gateway_id                              = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
  vpc_id                                          = aws_vpc.vpc_c_vpc.id
}

# ##################################
# Transit Gateway RouteTable
# ##################################
resource "aws_ec2_transit_gateway_route_table" "vpc_a_tgw_attach_rt" {
  tags = {
    Name = "VPC-A-TGW-ATTACH-RT"
  }
  transit_gateway_id = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
}

resource "aws_ec2_transit_gateway_route_table" "vpc_b_tgw_attach_rt" {
  tags = {
    Name = "VPC-B-TGW-ATTACH-RT"
  }
  transit_gateway_id = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
}

resource "aws_ec2_transit_gateway_route_table" "vpc_c_tgw_attach_rt" {
  tags = {
    Name = "VPC-C-TGW-ATTACH-RT"
  }
  transit_gateway_id = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
}
