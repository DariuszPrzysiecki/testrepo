resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!@#$%&*()-_=+[]{}<>?"
}

// Ensure the SQL instance and database configurations align with your application's requirements.
resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = "POSTGRES_13"
  region           = var.region

  settings {
    tier = var.tier
  }
}

resource "google_sql_database" "default" {
  name     = var.database_name
  instance = google_sql_database_instance.default.name
}
