variable "workgroup_name" {
  description = "(Required) Name of the workgroup"
  type        = string
}

variable "query_results_bucket" {
  description = "The S3 bucket where Athena query results will be stored."
  type        = string
}

variable "database_name" {
  description = "The name of the Athena database."
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket where ALB logs are stored."
  type        = string
}
