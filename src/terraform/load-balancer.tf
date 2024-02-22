/*
resource "aws_lb" "main" {
  name               = "my-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.my_alb_sg.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

  enable_deletion_protection = false

  tags = {
    Name        = "${var.application_name}-${var.environment_name}-load-balancer"
    application = var.application_name
    environment = var.environment_name
  }
}
*/