resource "aws_s3_bucket" "frontend" {
  bucket = "${var.application_name}-${var.environment_name}-frontend"

  tags = {
    Name        = "${var.application_name}-${var.environment_name}-frontend"
    application = var.application_name
    environment = var.environment_name
  }
}