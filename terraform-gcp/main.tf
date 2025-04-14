module "vpc_network" {
  source  = "./modules/network"
}

module "compute_instance" {
  source = "./modules/compute"
}

module "sql_database" {
  source = "./modules/database"
}
