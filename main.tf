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

resource "aws_glue_catalog_table" "this" {
  name          = var.table_name
  database_name = aws_glue_catalog_database.this.name
  table_type    = local.table_type
  parameters    = local.parameters

  storage_descriptor {
    location      = local.alb_logs_bucket_location
    input_format  = local.input_format
    output_format = local.output_format

    ser_de_info {
      name                  = local.ser_de_name
      serialization_library = local.ser_de_library

      parameters = local.ser_de_parameters
    }

    dynamic "columns" {
      for_each = local.table_columns
      content {
        name = columns.value.name
        type = columns.value.type
      }
    }
  }
}
