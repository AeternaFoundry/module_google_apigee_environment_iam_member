variable "apigee_environment_iam_members" {
  description = <<EOT
Map of apigee_environment_iam_members, attributes below
Required:
    - env_id
    - member
    - org_id
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    env_id = string
    member = string
    org_id = string
    role   = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

