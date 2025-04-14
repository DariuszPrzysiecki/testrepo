module "instance_template" {
  source = "terraform-google-modules/vm/google//modules/instance_template"
  project_id = var.project_id
  region = var.region
  service_account = var.service_account
}
