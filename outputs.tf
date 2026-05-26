output "id" {
  description = "ID of the account"
  value       = try(aws_organizations_account.this[0].id, null)
}

output "arn" {
  description = "ARN of the account"
  value       = try(aws_organizations_account.this[0].arn, null)
}

output "name" {
  description = "Name of the account"
  value       = try(aws_organizations_account.this[0].name, null)
}
