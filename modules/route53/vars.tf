variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "name" {
  description = "The Name of the application or solution  (e.g. `bastion` or `portal`)"
  default     = "dns"
}

variable "zone_id" {
  description = "Route53 DNS Zone id"
  default     = ""
}

variable "records" {
  description = "Records"
  type        = "list"
}

variable "domain_name" {
  description = "A domain name for which the certificate should be issued"
  type        = "string"
}

variable "zone_name" {
  description = "Hosted zone name"
  type        = "string"
}

variable "validation_method" {
  description = "Which method to use for validation, DNS or EMAIL"
  type        = "string"
  default     = "DNS"
}

variable "process_domain_validation_options" {
  type        = "string"
  default     = "true"
  description = "Flag to enable/disable processing of the record to add to the DNS zone to complete certificate validation"
}

variable "tags" {
  description = "Additional tags (e.g. map('BusinessUnit`,`XYZ`)"
  type        = "map"
  default     = {}
}

variable "subject_alternative_names" {
  description = "A list of domains that should be SANs in the issued certificate"
  type        = "list"
  default     = []
}
