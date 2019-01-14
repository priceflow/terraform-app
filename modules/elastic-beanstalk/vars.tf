variable "name" {
  description = "EB name, e.g. 'app' or 'jenkins'"
  default     = "app"
}

variable "stage" {
  description = "Stage, e.g. 'prod', 'staging', 'dev', or 'test'"
  type        = "string"
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
