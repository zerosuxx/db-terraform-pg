resource "postgresql_grant" "revoke_public" {
  database    = "postgres"
  role        = "public"
  # schema      = "public"
  object_type = "database"
  privileges  = []
}