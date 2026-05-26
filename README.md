# tf-atom-organizations-account-aws

[![CI](https://github.com/PlatformStackPulse/tf-atom-organizations-account-aws/actions/workflows/ci.yml/badge.svg)](https://github.com/PlatformStackPulse/tf-atom-organizations-account-aws/actions/workflows/ci.yml)
![Terraform](https://img.shields.io/badge/terraform-%3E%3D1.6.0-blueviolet)

## Purpose

AWS Organizations member account with configurable IAM access and parent OU.

## Module Documentation

<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0.0 |

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this"></a> [this](#module\_this) | git::https://github.com/PlatformStackPulse/tf-label.git | v1.0.0 |

### Resources

| Name | Type |
|------|------|
| [aws_organizations_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | Email address for the account | `string` | n/a | yes |
| <a name="input_close_on_deletion"></a> [close\_on\_deletion](#input\_close\_on\_deletion) | Close account on deletion | `bool` | `false` | no |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | IAM user access to billing (ALLOW, DENY) | `string` | `"DENY"` | no |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | Parent Organizational Unit ID or Root ID | `string` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | IAM role name for cross-account access | `string` | `"OrganizationAccountAccessRole"` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the account |
| <a name="output_id"></a> [id](#output\_id) | ID of the account |
| <a name="output_name"></a> [name](#output\_name) | Name of the account |
<!-- END_TF_DOCS -->
