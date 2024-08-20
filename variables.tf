variable "workgroup_name" {
  description = "(Required) Name of the workgroup"
  type        = string
}

variable "query_results_bucket" {
  description = "The S3 bucket where Athena query results will be stored."
  type        = string
}
