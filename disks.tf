resource "google_compute_disk" "poc_boot" {
  name  = "poc-boot"
  zone  = var.zones[0]
  image = "ubuntu-2004-lts"
  size  = 10
  type  = "pd-ssd"

  physical_block_size_bytes = 4096
}