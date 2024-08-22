output "athena_workgroup_name" {
  description = "Name of the Athena Workgroup"
  value       = aws_athena_workgroup.this.name
}

output "glue_catalog_database_name" {
  description = "Name of the Glue catalog database"
  value       = aws_glue_catalog_database.this.name
}

output "alb_logs_bucket_name" {
  description = "S3 bucket name where ALB logs are retrieved"
  value       = var.s3_bucket_name
}

output "query_results_bucket_name" {
  description = "S3 bucket name where Athena query results are stored"
  value       = var.query_results_bucket
}

output "alb_access_logs_location" {
  description = "Location in S3 where ALB access logs are stored"
  value       = local.tables[var.alb_access_logs_table_name].location
}

output "alb_connection_logs_location" {
  description = "Location in S3 where ALB connection logs are stored"
  value       = local.tables[var.alb_connection_logs_table_name].location
}

output "glue_table_names" {
  description = "Names of the Glue tables under the database"
  value       = [for table_name in keys(local.tables) : table_name]
}
