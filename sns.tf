resource "aws_sns_topic" "alert_topic" {
  name = "${local.name_prefix}-alert-topic"
}

variable "alert_email" {
  description = "Email address to receive SNS alerts"
  type        = string
  default     = "az@azni.me"  # Default placeholder, should be overridden
}

resource "aws_sns_topic_subscription" "alert_email" {
  topic_arn = aws_sns_topic.alert_topic.arn
  protocol  = "email"
  endpoint  = var.alert_email
}
