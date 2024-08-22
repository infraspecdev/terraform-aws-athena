variable "workgroup_name" {
  description = "(Required) The name of the Athena workgroup that will manage and isolate query execution and resource usage"
  type        = string
}

variable "query_results_bucket" {
  description = "(Required) The name of the S3 bucket where Athena will store the output of executed queries"
  type        = string
}

variable "database_name" {
  description = "(Required) The name of the Athena database in the AWS Glue Catalog that will contain the schema definitions for your ALB logs"
  type        = string
}

variable "s3_bucket_name" {
  description = "(Required) The name of the S3 bucket that holds the raw Application Load Balancer (ALB) logs"
  type        = string
}

variable "alb_access_logs_table_name" {
  description = "(Optional) The name of the Glue Catalog table that will store the parsed ALB access logs"
  type        = string
  default     = "alb_access_logs"
}

variable "alb_connection_logs_table_name" {
  description = "(Optional) The name of the Glue Catalog table that will store the parsed ALB connection logs"
  type        = string
  default     = "alb_connection_logs"
}
