variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
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

variable "type" {
  description = "Type"
  default     = "CNAME"
}

variable "ttl" {
  description = "The TTL of the record to add to the DNS zone to complete certificate validation"
  default     = "300"
}
