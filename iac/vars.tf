variable "environment" {
  description = "Name of the deployment environment."
  type        = string
}

variable "environment_subdomain" {
  description = "Subdomain for websites in this environment ('www' for prod, 'dev' for dev, etc)."
  type        = string
}