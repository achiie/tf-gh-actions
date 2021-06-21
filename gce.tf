resource "google_compute_instance" "vm-instance" {
  name         = "poc-instance"
  machine_type = "e2-medium"
  zone         = "europe-west2-a"

  tags = ["Rackspace", "POC"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
}

  service_account {
    scopes = ["cloud-platform"]
    email  = google_service_account.gce_sva.email
  }