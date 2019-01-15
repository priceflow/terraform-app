resource "aws_acm_certificate" "default" {
  domain_name               = "${var.domain_name}"
  validation_method         = "${var.validation_method}"
  subject_alternative_names = ["${var.subject_alternative_names}"]
  tags                      = "${var.tags}"
}

data "aws_route53_zone" "default" {
  count        = "${var.process_domain_validation_options == "true" && var.validation_method == "DNS" ? 1 : 0}"
  name         = "${var.domain_name}."
  private_zone = false
}

resource "aws_route53_record" "default" {
  count   = "${var.enabled == "true" ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "app.${var.domain_name}"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.records}"]
}
