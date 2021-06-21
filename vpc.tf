resource "google_compute_network" "vpc_network" {
  name = "poc-network"
  auto_create_subnetworks = false

}