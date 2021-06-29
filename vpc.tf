resource "google_compute_network" "vpc_network" {
  name                    = "poc-network"
  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "subnet_work" {
  name          = "subnet-1"
  ip_cidr_range = "10.2.0.0/16"
  region        = "europe-west2"
  network       = google_compute_network.vpc_network.id
  secondary_ip_range {
    range_name    = "service-range"
    ip_cidr_range = "10.21.192.0/18"
  }
  secondary_ip_range {
    range_name    = "pod-range"
    ip_cidr_range = "10.25.3.0/24"
  }
}

resource "google_compute_subnetwork" "subnet_work_2" {
  name          = "subnet-2"
  ip_cidr_range = "10.2.0.1/16"
  region        = "europe-west2"
  network       = google_compute_network.vpc_network.id
}