resource "aws_iam_policy" "terraform_s3_policy" {
  name        = "TerraformS3Policy"
  description = "Policy to allow Terraform to manage S3 bucket policies"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "s3:PutBucketPolicy",
        Resource = aws_s3_bucket.frontend.arn
      }
    ]

  })
}