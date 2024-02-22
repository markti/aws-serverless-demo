locals {
  subnet_ids = [for subnet in values(aws_subnet.backend) : subnet.id]
}

resource "aws_security_group" "alb" {
  name        = "alb-${var.application_name}-${var.environment_name}"
  description = "Security group for ALB"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    application = var.application_name
    environment = var.environment_name
  }
}

resource "aws_lb" "main" {
  name               = "alb-${var.application_name}-${var.environment_name}"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb.id]
  subnets            = local.subnet_ids

  enable_deletion_protection = false

  tags = {
    Name        = "${var.application_name}-${var.environment_name}-load-balancer"
    application = var.application_name
    environment = var.environment_name
  }
}
