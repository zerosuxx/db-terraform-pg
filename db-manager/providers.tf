provider "postgresql" {
  host     = "localhost"
  port     = 5432
  database = "postgres"
  username = "root"
  # password = ""
  sslmode  = "disable"
}