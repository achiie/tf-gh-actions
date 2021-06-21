provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "remote-gh-tf-state"
    prefix = "terraform/state"
  }
}