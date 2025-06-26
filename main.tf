resource "google_storage_bucket" "default" {
  name          = "gjhwf-bucket"
  location      = "US"
  storage_class = "STANDARD"
}
