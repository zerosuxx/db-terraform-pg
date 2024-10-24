variable "DB_SCHEMA" {
  default = "postgres"
}

variable "DB_HOST" {
  default = "localhost"
}

variable "DB_PORT" {
  default = 5432
}

variable "DB_NAME" {
  default = "postgres"
}

variable "DB_USERNAME" {}

variable "DB_PASSWORD" {
  default = null
}

variable "DB_SSL_MODE" {
  default = "disable"
}

variable "APP_DB" {
  default = "app"
}

variable "APP_DB_SCHEMA" {
  default = "app"
}
