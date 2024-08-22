module "athena" {
  source                         = "../.."
  workgroup_name                 = var.workgroup_name
  query_results_bucket           = var.query_results_bucket
  database_name                  = var.database_name
  s3_bucket_name                 = var.s3_bucket_name
  alb_access_logs_table_name     = var.alb_access_logs_table_name
  alb_connection_logs_table_name = var.alb_connection_logs_table_name
}
