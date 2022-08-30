
resource "aws_ecr_repository" "ecr_repositories" {
  for_each = var.containers
  name     = each.value.name

  tags = {
    Name        = each.value.name
    Environment = var.environment
  }
}
