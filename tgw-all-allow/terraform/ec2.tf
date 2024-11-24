resource "aws_instance" "vpc_a_pub_server" {
  ami                                  = "ami-0453ec754f44f9a4a"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "test-tgw-key"
  source_dest_check                    = true
  subnet_id                            = aws_subnet.vpc_a_subnet_public_us_east_1a.id
  tags = {
    Name = "vpc-a-pub-server"
  }
  tenancy                     = "default"
  vpc_security_group_ids      = [aws_security_group.baston_sg.id]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = null
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
}

resource "aws_instance" "vpc_a_pri_server" {
  ami                                  = "ami-0453ec754f44f9a4a"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "test-tgw-key"
  source_dest_check                    = true
  subnet_id                            = aws_subnet.vpc_a_subnet_private1_us_east_1a.id
  tags = {
    Name = "vpc-a-pri-server"
  }
  tenancy                     = "default"
  vpc_security_group_ids      = [aws_security_group.vpc_a_pri_sg.id]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = null
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
}

resource "aws_instance" "vpc_b_pri_server" {
  ami                                  = "ami-0453ec754f44f9a4a"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "test-tgw-key"
  source_dest_check                    = true
  subnet_id                            = aws_subnet.vpc_b_subnet_private1_us_east_1a.id
  tags = {
    Name = "vpc-b-pri-server"
  }
  tenancy                     = "default"
  vpc_security_group_ids      = [aws_security_group.vpc_b_pri_sg.id]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = null
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
}

resource "aws_instance" "vpc_c_pri_server" {
  ami                                  = "ami-0453ec754f44f9a4a"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "test-tgw-key"
  source_dest_check                    = true
  subnet_id                            = aws_subnet.vpc_c_subnet_private1_us_east_1a.id
  tags = {
    Name = "vpc-c-pri-server"
  }
  tenancy                     = "default"
  vpc_security_group_ids      = [aws_security_group.vpc_c_pri_sg.id]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = null
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
}