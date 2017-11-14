module "mini_module" {
  source = "GoogleCloudPlatform/lb/google"

  name         = "group1-lb"
  service_port = 80
  target_tags  = []
  region       = "us-west1"

  firewall_project = ""
  network          = "default"
  project          = "Module Testing"
  session_affinity = "NONE"
}
