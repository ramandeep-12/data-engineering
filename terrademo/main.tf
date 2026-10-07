terraform {
    required_providers {
      google={
        source="hashicorp/google"
        version= "5.6.8"
      }
    }
}

provider "google"{
    project     = "project-954a0141-3380-4961-bd9"
    region      = "us-central1"
}