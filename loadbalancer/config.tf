module "mini_module" {
  source = "GoogleCloudPlatform/lb/google"

  name         = "group1-lb"
  service_port = 80
  target_tags  = []

  firewall_project = ""
  network          = "default"
  project          = "Module Testing"
  region           = "us-west1"
  session_affinity = "NONE"
}
