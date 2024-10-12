provider "postgresql" {
  scheme   = var.DB_SCHEMA
  host     = var.DB_HOST
  port     = var.DB_PORT
  database = var.DB_NAME
  username = var.DB_USERNAME
  password = var.DB_PASSWORD
  sslmode  = var.DB_SSL_MODE
}
