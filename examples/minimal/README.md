<!-- BEGIN_TF_DOCS -->
### Example `terraform.tfvars`

```hcl
# Name of the Athena workgroup. This workgroup will manage queries and resource usage.
workgroup_name = "your_athena_workgroup_name"

# The S3 bucket where the results of Athena queries will be stored.
query_results_bucket = "your_query_results_bucket_name"

# The name of the Glue Catalog Database where ALB logs will be stored.
database_name = "your_glue_catalog_database_name"

# The name of the S3 bucket where Application Load Balancer (ALB) logs are stored.
s3_bucket_name = "your_alb_logs_s3_bucket_name"
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.4 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_athena"></a> [athena](#module\_athena) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | (Required) The name of the Athena database in the AWS Glue Catalog that will contain the schema definitions for your ALB logs | `string` | n/a | yes |
| <a name="input_query_results_bucket"></a> [query\_results\_bucket](#input\_query\_results\_bucket) | (Required) The name of the S3 bucket where Athena will store the output of executed queries | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | (Required) The name of the S3 bucket that holds the raw Application Load Balancer (ALB) logs | `string` | n/a | yes |
| <a name="input_workgroup_name"></a> [workgroup\_name](#input\_workgroup\_name) | (Required) The name of the Athena workgroup that will manage and isolate query execution and resource usage | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
