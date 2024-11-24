# ##################################
# Security Group
# ##################################
resource "aws_security_group" "baston_sg" {
  description = "baston-sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  name                   = "baston-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "baston-sg"
  }
  vpc_id = aws_vpc.vpc_a_vpc.id
}

resource "aws_security_group" "vpc_a_pri_sg" {
  description = "vpc-a-pri-sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  name                   = "vpc-a-pri-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "vpc-a-pri-sg"
  }
  vpc_id = aws_vpc.vpc_a_vpc.id
}

resource "aws_security_group" "vpc_b_pri_sg" {
  description = "vpc-b-pri-sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  name                   = "vpc-b-pri-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "vpc-b-pri-sg"
  }
  vpc_id = aws_vpc.vpc_b_vpc.id
}

resource "aws_security_group" "vpc_c_pri_sg" {
  description = "vpc-c-pri-sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  name                   = "vpc-c-pri-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "vpc-c-pri-sg"
  }
  vpc_id = aws_vpc.vpc_c_vpc.id
}