terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "5.6.0"
        }
    }
}

provider "google" {
    credentials = file(var.credentials)
    project = var.project
    region = var.region
}

# Data Lake
resource "google_storage_bucket" "medical_lake" {
    name = var.gcs_bucket_name
    location = var.location
    force_destroy = true

    storage_class = "STANDARD"
}

# Data Warehouse
resource "google_bigquery_dataset" "medical_dataset" {
    dataset_id = var.bq_dataset_name
    location = var.location
}