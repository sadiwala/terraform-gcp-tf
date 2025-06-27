resource "google_storage_bucket" "default" {
  project       = "google-mpf-982916601176"
  name          = "gjhwf-bucket"
  location      = "US"
  storage_class = "STANDARD"
}
