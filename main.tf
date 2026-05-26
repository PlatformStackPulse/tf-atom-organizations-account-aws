resource "aws_organizations_account" "this" {
  count = local.enabled ? 1 : 0

  name      = module.this.id
  email     = var.email
  parent_id = var.parent_id

  iam_user_access_to_billing = var.iam_user_access_to_billing
  role_name                  = var.role_name

  close_on_deletion = var.close_on_deletion

  tags = local.tags

  lifecycle {
    ignore_changes = [role_name]
  }
}
