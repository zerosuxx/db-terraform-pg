# resource "postgresql_grant" "revoke_public" {
#   database    = "postgres"
#   role        = "public"
#   object_type = "database"
#   privileges  = []
# }

import {
  id = "app_ro"
  to = postgresql_role.app_ro
}

resource "postgresql_role" "app_ro" {
  name            = "app_ro"
  login           = true
  skip_drop_role  = true
  create_database = false
  create_role     = false
  superuser       = false
  replication     = false
}

resource "postgresql_grant" "allow_app_ro_database" {
  database    = var.APP_DB
  role        = "app_ro"
  object_type = "database"
  privileges = ["CONNECT"]
}

resource "postgresql_grant" "allow_app_ro_schema" {
  database    = var.APP_DB
  role        = "app_ro"
  object_type = "schema"
  schema      = var.APP_DB_SCHEMA
  privileges = ["USAGE"]
}

resource "postgresql_grant" "allow_app_ro_select" {
  database    = var.APP_DB
  role        = "app_ro"
  schema      = var.APP_DB_SCHEMA
  object_type = "table"
  objects = []
  privileges = ["SELECT"]
}

