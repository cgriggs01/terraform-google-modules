module "mini_module" {
  source = "GoogleCloudPlatform/lb/google"

  name         = "group1-lb"
  service_port = 80
  target_tags  = []
  region       = "${var.region}"

  firewall_project = ""
  network          = "default"
  project          = "Module Testing"
  session_affinity = "NONE"
}
