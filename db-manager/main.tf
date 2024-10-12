resource "postgresql_grant" "revoke_public" {
  database    = "postgres"
  role        = "public"
  object_type = "database"
  privileges  = []
}

resource "postgresql_grant" "allow_app_ro" {
  database    = "postgres"
  role        = "app_ro"
  object_type = "database"
  privileges  = ["CONNECT"]
}