resource "google_service_account" "gce_sva" {
  account_id   = "gce-sva"
  display_name = "POC Service Account"
}