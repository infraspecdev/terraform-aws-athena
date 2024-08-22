module "athena" {
  source               = "../.."
  workgroup_name       = var.workgroup_name
  query_results_bucket = var.query_results_bucket
  database_name        = var.database_name
  s3_bucket_name       = var.s3_bucket_name
}
