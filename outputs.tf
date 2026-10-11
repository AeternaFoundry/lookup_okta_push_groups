output "push_groups_lookup_id" {
  description = "Map of id values across all push_groups_lookup, keyed the same as var.push_groups_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_push_groups.push_groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "push_groups_lookup_app_id" {
  description = "Map of app_id values across all push_groups_lookup, keyed the same as var.push_groups_lookup except keys with no app_id are omitted"
  value       = { for k, v in data.okta_push_groups.push_groups_lookup : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "push_groups_lookup_mappings" {
  description = "Map of mappings values across all push_groups_lookup, keyed the same as var.push_groups_lookup except keys with no mappings are omitted"
  value       = { for k, v in data.okta_push_groups.push_groups_lookup : k => v.mappings if v.mappings != null && length(v.mappings) > 0 }
}

