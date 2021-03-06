resource "google_cloud_run_service" "default" {
  name     = "cwv-logger"
  location = var.location

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}