provider "google" {
  project = "terraform-cloud-445206"
  region  = "us-central1"
}
resource "google_storage_bucket" "test_bucket_good_1" {
  name                        = "test-bucket-good"
  location                    = "EU"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
resource "google_storage_bucket" "test_bucket_bad" {
  name                        = "test-bucket-bad"
  location                    = "EU"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = false
}