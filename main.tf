data "aws_caller_identity" "current" {}

locals {
  # Replace underscores with hyphens in name_prefix for DNS compatibility
  name_prefix = replace(split("/", "${data.aws_caller_identity.current.arn}")[1], "_", "-")
  email = "_" #change underscore to your email
}

