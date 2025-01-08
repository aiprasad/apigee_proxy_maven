variable "org_name" {
  type        = string
  description = "Existing Apigee org name"
}

variable "env_name" {
  type        = string
  description = "Existing Apigee env name"
}

variable "apigee_bearer_token" {
  type        = string
  description = "Short-lived token for Apigee mgmt"
  sensitive   = true
}