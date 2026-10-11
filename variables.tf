variable "push_groups_lookup" {
  description = <<EOT
Map of push_groups_lookup, attributes below
Required:
    - app_id
EOT

  type = map(object({
    app_id = string
  }))
}

