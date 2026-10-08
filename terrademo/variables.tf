variable "Project" {
  description = "Project name"
  default     = "project-954a0141-3380-4961-bd9"
}
variable "region" {
  description = "region name"
  default     = "us-central1"
}
variable "location" {
  description = "Project location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My bigquery dataset"
  default     = "dataset"
}

variable "gcs_bucket_storage" {
  description = "My storage bucket name"
  default     = "project-954a0141-3380-4961-bd9-terra-bucket"
}

variable "gcs_stoarge_class" {
  description = "bucket storage class"
  default     = "STANDARD"
}