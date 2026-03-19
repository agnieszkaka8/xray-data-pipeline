variable "project" {
    description = "Google Cloud Project ID"
    default = "xray-data-pipeline"
}

variable "region" {
    description = "Region for GCP resources"
    default = "europe-central2"
}

variable "location" {
    description = "Project location for BigQuery and GCS. Must be consistent across resources"
    default = "EU"
}

variable "credentials" {
    description = "Path to Google Cloud Service Account key file (.json)"
    default = "../google_credentials.json"
}

variable "gcs_bucket_name" {
    description = "Globally unique name for the Google Cloud Storage bucket (Data Lake)"
    default = "xray-data-lake-akh"
}

variable "bq_dataset_name" {
    description = "Name of the BigQuery Dataset"
    default = "xray_stg_data"
}