output "frontend_bucket_name" {
  value = aws_s3_bucket.frontend.bucket
}
output "frontend_bucket_regional_domain_name" {
  value = aws_s3_bucket.frontend.bucket_regional_domain_name
}