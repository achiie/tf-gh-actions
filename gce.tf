resource "google_compute_instance" "poc_instance" {
  name                      = "poc-boot"
  machine_type              = "g1-small"
  zone                      = var.zones[0]
  allow_stopping_for_update = false

  tags = ["test", "poc"]

  boot_disk {
    auto_delete = "false"
    source      = google_compute_disk.poc_boot.self_link
  }


  network_interface {
    subnetwork         = var.subnetwork
    subnetwork_project = var.host_project
  }

  metadata = {
    startup-script-url          = "https://storage.googleapis.com/rs-gce-instances-scripts-master/linux/startup_scripts/rackspace_gcp_sysprep_v1.sh"
    install-stackdriver-agent   = "true"
    install-stackdriver-logging = "true"
    install-default-packages    = "true"
  }

  service_account {
    scopes = ["cloud-platform"]
    email  = google_service_account.gce_sva.email
  }
}