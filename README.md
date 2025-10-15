<!-- BEGIN_TF_DOCS -->
terraform-aws-athena

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.16 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 6.16 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_athena_workgroup.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup) | resource |
| [aws_glue_catalog_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_catalog_database) | resource |
| [aws_glue_catalog_table.alb_logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_catalog_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_access_logs_table_name"></a> [alb\_access\_logs\_table\_name](#input\_alb\_access\_logs\_table\_name) | (Optional) The name of the Glue Catalog table that will store the parsed ALB access logs | `string` | `"alb_access_logs"` | no |
| <a name="input_alb_connection_logs_table_name"></a> [alb\_connection\_logs\_table\_name](#input\_alb\_connection\_logs\_table\_name) | (Optional) The name of the Glue Catalog table that will store the parsed ALB connection logs | `string` | `"alb_connection_logs"` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | (Required) The name of the Athena database in the AWS Glue Catalog that will contain the schema definitions for your ALB logs | `string` | n/a | yes |
| <a name="input_query_results_bucket"></a> [query\_results\_bucket](#input\_query\_results\_bucket) | (Required) The name of the S3 bucket where Athena will store the output of executed queries | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | (Required) The name of the S3 bucket that holds the raw Application Load Balancer (ALB) logs | `string` | n/a | yes |
| <a name="input_workgroup_name"></a> [workgroup\_name](#input\_workgroup\_name) | (Required) The name of the Athena workgroup that will manage and isolate query execution and resource usage | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_access_logs_location"></a> [alb\_access\_logs\_location](#output\_alb\_access\_logs\_location) | Location in S3 where ALB access logs are stored |
| <a name="output_alb_connection_logs_location"></a> [alb\_connection\_logs\_location](#output\_alb\_connection\_logs\_location) | Location in S3 where ALB connection logs are stored |
| <a name="output_alb_logs_bucket_name"></a> [alb\_logs\_bucket\_name](#output\_alb\_logs\_bucket\_name) | S3 bucket name where ALB logs are retrieved |
| <a name="output_athena_workgroup_name"></a> [athena\_workgroup\_name](#output\_athena\_workgroup\_name) | Name of the Athena Workgroup |
| <a name="output_glue_catalog_database_name"></a> [glue\_catalog\_database\_name](#output\_glue\_catalog\_database\_name) | Name of the Glue catalog database |
| <a name="output_glue_table_names"></a> [glue\_table\_names](#output\_glue\_table\_names) | Names of the Glue tables under the database |
| <a name="output_query_results_bucket_name"></a> [query\_results\_bucket\_name](#output\_query\_results\_bucket\_name) | S3 bucket name where Athena query results are stored |
<!-- END_TF_DOCS -->
