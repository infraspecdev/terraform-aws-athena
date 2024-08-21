resource "aws_athena_workgroup" "this" {
  name          = var.workgroup_name
  force_destroy = local.force_destroy_value

  configuration {
    publish_cloudwatch_metrics_enabled = local.publish_cloudwatch_metrics_enabled_value

    result_configuration {
      output_location = local.query_results_bucket_location
    }
  }
}

resource "aws_glue_catalog_database" "this" {
  name = var.database_name
}

resource "aws_glue_catalog_table" "alb_logs" {
  for_each      = local.tables
  name          = each.key
  database_name = aws_glue_catalog_database.this.name
  table_type    = local.table_type
  parameters    = each.value.parameters

  storage_descriptor {
    location      = each.value.location
    input_format  = local.input_format
    output_format = local.output_format

    ser_de_info {
      name                  = each.value.ser_de_name
      serialization_library = each.value.ser_de_serialization_library

      parameters = each.value.ser_de_params
    }

    dynamic "columns" {
      for_each = each.value.columns
      content {
        name = columns.value.name
        type = columns.value.type
      }
    }
  }
}
