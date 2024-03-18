resource "aws_secretsmanager_secret" "secret_sauce" {
  name = "secret-sauce"

  tags = {
    application = var.application_name
    environment = var.environment_name
  }
}

resource "aws_secretsmanager_secret_version" "secret_sauce" {
  secret_id     = aws_secretsmanager_secret.secret_sauce.id
  secret_string = random_password.secret_sauce.result
}

resource "random_password" "secret_sauce" {
  length  = 8
  lower   = false
  special = false
}
