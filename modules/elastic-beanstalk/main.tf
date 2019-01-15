resource "aws_s3_bucket" "default" {
  bucket = "priceflow-eb-${var.stage}"
}

resource "aws_elastic_beanstalk_application" "default" {
  name        = "priceflow"
  description = "${var.description}"
}
