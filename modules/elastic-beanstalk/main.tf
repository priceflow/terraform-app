resource "aws_elastic_beanstalk_application" "default" {
  name        = "priceflow"
  description = "${var.description}"
}
