provider "google" {
  project = var.gcp_project_id
  region  = "europe-west3"
  zone    = "europe-west3-a"
}