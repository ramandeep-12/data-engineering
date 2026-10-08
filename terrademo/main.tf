terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  project = var.Project
  region  = var.region
}

resource "google_storage_bucket" "demo-bucket" {
  name                        = var.gcs_bucket_storage
  location                    = var.location
  force_destroy               = true
  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
resource "google_bigquery_dataset" "dataset" {
  dataset_id                 = var.bq_dataset_name
  delete_contents_on_destroy = true
  location                   = var.location
}