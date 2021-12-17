terraform {
  backend "gcs" {
    bucket  = "tf-state-prod-cwv-logger"
    prefix  = "terraform/state"
  }
}
