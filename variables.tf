variable "email" {
  description = "Email address for the account"
  type        = string
  validation {
    condition     = can(regex("^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$", var.email))
    error_message = "email must be a valid email address."
  }
}

variable "parent_id" {
  description = "Parent Organizational Unit ID or Root ID"
  type        = string
  default     = null
}

variable "iam_user_access_to_billing" {
  description = "IAM user access to billing (ALLOW, DENY)"
  type        = string
  default     = "DENY"
}

variable "role_name" {
  description = "IAM role name for cross-account access"
  type        = string
  default     = "OrganizationAccountAccessRole"
}

variable "close_on_deletion" {
  description = "Close account on deletion"
  type        = bool
  default     = false
}
