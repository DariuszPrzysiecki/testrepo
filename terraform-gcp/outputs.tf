output "instance_ip" {
  value = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}

output "sql_instance_name" {
  value = google_sql_database_instance.mysql_instance.name
}
