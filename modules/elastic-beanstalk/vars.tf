variable "name" {
  description = "The Name of the application or solution  (e.g. `bastion` or `portal`)"
}

variable "description" {
  description = "Description"
  default     = "priceflow web app"
}

variable "tags" {
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`)"
  type        = "map"
  default     = {}
}
