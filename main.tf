resource "google_cloud_run_service_iam_member" "authorize" {
  count    = length(var.members)
  location = google_cloud_run_service.main.location
  project  = google_cloud_run_service.main.project
  service  = google_cloud_run_service.main.name
  role     = "roles/run.invoker"
  member   = var.members[count.index]
}

module "m1" {
  source = "github.com/GoogleCloudPlatform/terraform-google-regional-lb-http//modules/backend?ref=v0.4.0"
}
