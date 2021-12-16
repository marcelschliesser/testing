provider "google" {
  project = var.gcp_project_id
  region  = "europe-west3"
  zone    = "europe-west3-a"
}

resource "google_storage_bucket" "auto-expire" {
  name     = "auto-expiring-bucket-marcello"
  location = "europe-west3"
}