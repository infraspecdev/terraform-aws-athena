<!-- BEGIN_TF_DOCS -->
terraform-aws-athena

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_athena_workgroup.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup) | resource |
| [aws_glue_catalog_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_catalog_database) | resource |
| [aws_glue_catalog_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_catalog_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the Athena database. | `string` | n/a | yes |
| <a name="input_query_results_bucket"></a> [query\_results\_bucket](#input\_query\_results\_bucket) | The S3 bucket where Athena query results will be stored. | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | The name of the S3 bucket where ALB logs are stored. | `string` | n/a | yes |
| <a name="input_s3_log_prefix"></a> [s3\_log\_prefix](#input\_s3\_log\_prefix) | The prefix within the S3 bucket where ALB logs are stored (e.g., 'AWSLogs/'). | `string` | n/a | yes |
| <a name="input_table_name"></a> [table\_name](#input\_table\_name) | The name of the Athena table to query ALB logs. | `string` | n/a | yes |
| <a name="input_workgroup_name"></a> [workgroup\_name](#input\_workgroup\_name) | (Required) Name of the workgroup | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
