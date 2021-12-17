resource "google_storage_bucket" "state-bucket" {
  name          = "tf-state-prod-cwv-logger"
  location      = "europe-west3"
}