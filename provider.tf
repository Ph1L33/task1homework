terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.27.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = var.credentials
}

# provider "google" {
#   # Configuration options
#   project     = var[0]
#   region      = var[1]
#   zone        = var[2]
#   credentials = var[3]
# }