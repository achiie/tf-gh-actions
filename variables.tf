variable "project_id" {
  type        = string
  description = "The Google Cloud Project Id"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

variable "zones" {
  description = "GCP zone identifier"
  type        = list
}

variable "host_project" {
  description = "shared vpc name"
  type        = string
  default     = "poc-network"
}

variable "subnetwork" {
  description = "Subnet to deploy to. Only one of network or subnetwork should be specified."
  default     = ""
}