resource "google_apigee_environment_iam_member" "apigee_environment_iam_members" {
  for_each = var.apigee_environment_iam_members

  env_id = each.value.env_id
  member = each.value.member
  org_id = each.value.org_id
  role   = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

