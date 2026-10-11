data "okta_push_groups" "push_groups_lookup" {
  for_each = var.push_groups_lookup

  app_id = each.value.app_id
}

