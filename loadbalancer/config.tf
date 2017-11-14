variable "region" {
  default = "us-west1"
}

variable "creds" {}
variable "project" {}

provider "google" {
  credentials = "${var.creds}"
  project     = "${var.project}"
  region      = "${var.region}"
}

module "mini_module" {
  source = "GoogleCloudPlatform/lb/google"

  name         = "group1-lb"
  service_port = 80
  target_tags  = ["test-lb-config"]
  region       = "${var.region}"

  firewall_project = ""
  network          = "default"
  project          = "${var.project}"
  session_affinity = "NONE"
}
