resource "aws_athena_workgroup" "this" {
  name          = var.workgroup_name
  force_destroy = true

  configuration {
    publish_cloudwatch_metrics_enabled = false

    result_configuration {
      output_location = local.query_results_bucket_location
    }
  }
}

resource "aws_glue_catalog_database" "this" {
  name = var.database_name
}
