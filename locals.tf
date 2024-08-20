locals {
  query_results_bucket_location = "s3://${var.query_results_bucket}/output/"
  alb_logs_bucket_location      = "s3://${var.s3_bucket_name}/${var.s3_log_prefix}"
  input_format                  = "org.apache.hadoop.mapred.TextInputFormat"
  output_format                 = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"
  ser_de_name                   = "alb-logs-serde"
  ser_de_library                = "org.apache.hadoop.hive.serde2.RegexSerDe"
  ser_de_parameters = {
    "serialization.format" = "1"
    "input.regex"          = "([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*):([0-9]*) ([^ ]*)[:-]([0-9]*) ([-.0-9]*) ([-.0-9]*) ([-.0-9]*) (|[-0-9]*) (-|[-0-9]*) ([-0-9]*) ([-0-9]*) \"([^ ]*) (.*) (- |[^ ]*)\" \"([^\"]*)\" ([A-Z0-9-_]+) ([A-Za-z0-9.-]*) ([^ ]*) \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" ([-.0-9]*) ([^ ]*) \"([^\"]*)\" \"([^\"]*)\" \"([^ ]*)\" \"([^\\s]+?)\" \"([^\\s]+)\" \"([^ ]*)\" \"([^ ]*)\" ?([^ ]*)?"
  }
  table_type = "EXTERNAL_TABLE"
  parameters = {
    "classification" = "log"
    "typeOfData"     = "awsALBLogs"
  }

  table_columns = [
    {
      name = "type"
      type = "string"
    },
    {
      name = "time"
      type = "string"
    },
    {
      name = "elb"
      type = "string"
    },
    {
      name = "client_ip"
      type = "string"
    },
    {
      name = "client_port"
      type = "int"
    },
    {
      name = "target_ip"
      type = "string"
    },
    {
      name = "target_port"
      type = "int"
    },
    {
      name = "request_processing_time"
      type = "double"
    },
    {
      name = "target_processing_time"
      type = "double"
    },
    {
      name = "response_processing_time"
      type = "double"
    },
    {
      name = "elb_status_code"
      type = "int"
    },
    {
      name = "target_status_code"
      type = "string"
    },
    {
      name = "received_bytes"
      type = "bigint"
    },
    {
      name = "sent_bytes"
      type = "bigint"
    },
    {
      name = "request_verb"
      type = "string"
    },
    {
      name = "request_url"
      type = "string"
    },
    {
      name = "request_proto"
      type = "string"
    },
    {
      name = "user_agent"
      type = "string"
    },
    {
      name = "ssl_cipher"
      type = "string"
    },
    {
      name = "ssl_protocol"
      type = "string"
    },
    {
      name = "target_group_arn"
      type = "string"
    },
    {
      name = "trace_id"
      type = "string"
    },
    {
      name = "domain_name"
      type = "string"
    },
    {
      name = "chosen_cert_arn"
      type = "string"
    },
    {
      name = "matched_rule_priority"
      type = "string"
    },
    {
      name = "request_creation_time"
      type = "string"
    },
    {
      name = "actions_executed"
      type = "string"
    },
    {
      name = "redirect_url"
      type = "string"
    },
    {
      name = "lambda_error_reason"
      type = "string"
    },
    {
      name = "target_port_list"
      type = "string"
    },
    {
      name = "target_status_code_list"
      type = "string"
    },
    {
      name = "classification"
      type = "string"
    },
    {
      name = "classification_reason"
      type = "string"
    },
    {
      name = "conn_trace_id"
      type = "string"
    }
  ]
}
