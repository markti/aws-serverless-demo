resource "aws_s3_bucket" "frontend" {
  bucket = "${var.application_name}-${var.environment_name}-frontend"

  tags = {
    Name        = "${var.application_name}-${var.environment_name}-frontend"
    application = var.application_name
    environment = var.environment_name
  }
}

resource "aws_s3_bucket_website_configuration" "frontend" {
  bucket = aws_s3_bucket.frontend.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}