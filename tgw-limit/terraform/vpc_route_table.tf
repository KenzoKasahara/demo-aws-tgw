# ##################################
# Route Table
# ##################################
resource "aws_route_table" "vpc_a_rtb_public" {
  propagating_vgws = []
  route = [{
    carrier_gateway_id         = null
    cidr_block                 = "0.0.0.0/0"
    core_network_arn           = null
    destination_prefix_list_id = null
    egress_only_gateway_id     = null
    gateway_id                 = aws_internet_gateway.vpc_a_igw.id
    ipv6_cidr_block            = null
    local_gateway_id           = null
    nat_gateway_id             = null
    network_interface_id       = null
    transit_gateway_id         = null
    vpc_endpoint_id            = null
    vpc_peering_connection_id  = null
  }]
  tags = {
    Name = "VPC-A-rtb-public"
  }
  vpc_id = aws_vpc.vpc_a_vpc.id
}

resource "aws_route_table" "vpc_a_rtb_private1_us_east_1a" {
  propagating_vgws = []
  route = [{
    carrier_gateway_id         = null
    cidr_block                 = "10.0.0.0/8"
    core_network_arn           = null
    destination_prefix_list_id = null
    egress_only_gateway_id     = null
    gateway_id                 = null
    ipv6_cidr_block            = null
    local_gateway_id           = null
    nat_gateway_id             = null
    network_interface_id       = null
    transit_gateway_id         = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
    vpc_endpoint_id            = null
    vpc_peering_connection_id  = null
  }]
  tags = {
    Name = "VPC-A-rtb-private1-us-east-1a"
  }
  vpc_id = aws_vpc.vpc_a_vpc.id
}

resource "aws_route_table" "vpc_b_rtb_private1_us_east_1a" {
  propagating_vgws = []
  route = [{
    carrier_gateway_id         = null
    cidr_block                 = "10.0.0.0/8"
    core_network_arn           = null
    destination_prefix_list_id = null
    egress_only_gateway_id     = null
    gateway_id                 = null
    ipv6_cidr_block            = null
    local_gateway_id           = null
    nat_gateway_id             = null
    network_interface_id       = null
    transit_gateway_id         = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
    vpc_endpoint_id            = null
    vpc_peering_connection_id  = null
  }]
  tags = {
    Name = "VPC-B-rtb-private1-us-east-1a"
  }
  vpc_id = aws_vpc.vpc_b_vpc.id
}

resource "aws_route_table" "vpc_c_rtb_private1_us_east_1a" {
  propagating_vgws = []
  route = [{
    carrier_gateway_id         = null
    cidr_block                 = "10.0.0.0/8"
    core_network_arn           = null
    destination_prefix_list_id = null
    egress_only_gateway_id     = null
    gateway_id                 = null
    ipv6_cidr_block            = null
    local_gateway_id           = null
    nat_gateway_id             = null
    network_interface_id       = null
    transit_gateway_id         = aws_ec2_transit_gateway.vpc_a_b_c_tgw_no_default_route.id
    vpc_endpoint_id            = null
    vpc_peering_connection_id  = null
  }]
  tags = {
    Name = "VPC-C-rtb-private1-us-east-1a"
  }
  vpc_id = aws_vpc.vpc_c_vpc.id
}

# ##################################
# Route Table Association
# ##################################
resource "aws_route_table_association" "vpc_a_rtb_public" {
  subnet_id      = aws_subnet.vpc_a_subnet_public_us_east_1a.id
  route_table_id = aws_route_table.vpc_a_rtb_public.id
}

resource "aws_route_table_association" "vpc_a_rtb_private1_us_east_1a" {
  subnet_id      = aws_subnet.vpc_a_subnet_private1_us_east_1a.id
  route_table_id = aws_route_table.vpc_a_rtb_private1_us_east_1a.id
}

resource "aws_route_table_association" "vpc_b_rtb_private1_us_east_1a" {
  subnet_id      = aws_subnet.vpc_b_subnet_private1_us_east_1a.id
  route_table_id = aws_route_table.vpc_b_rtb_private1_us_east_1a.id
}

resource "aws_route_table_association" "vpc_c_rtb_private1_us_east_1a" {
  subnet_id      = aws_subnet.vpc_c_subnet_private1_us_east_1a.id
  route_table_id = aws_route_table.vpc_c_rtb_private1_us_east_1a.id
}