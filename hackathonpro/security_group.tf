# Security group for ECS (virtual firewall for your instance to control inbound and outbound traffic)
resource "aws_security_group" "ec2_sg" {
  vpc_id      = aws_vpc.vpc.id
  name        = "ec2-security"
  description = "allow all"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2_security"
    Env  = var.project_environnement
  }
}
