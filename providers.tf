provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "remote-tf-gh-state"
    prefix = "terraform/state"
  }
}