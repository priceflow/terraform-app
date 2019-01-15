variable "stage" {
  description = "Stage, e.g. 'prod', 'staging', 'dev', or 'test'"
  type        = "string"
}

variable "description" {
  description = "Description"
  default     = "priceflow web app"
}
