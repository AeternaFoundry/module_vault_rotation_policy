output "rotation_policies_max_retries_per_cycle" {
  description = "Map of max_retries_per_cycle values across all rotation_policies, keyed the same as var.rotation_policies except keys with no max_retries_per_cycle are omitted"
  value       = { for k, v in vault_rotation_policy.rotation_policies : k => v.max_retries_per_cycle if v.max_retries_per_cycle != null }
}
output "rotation_policies_max_retry_cycles" {
  description = "Map of max_retry_cycles values across all rotation_policies, keyed the same as var.rotation_policies except keys with no max_retry_cycles are omitted"
  value       = { for k, v in vault_rotation_policy.rotation_policies : k => v.max_retry_cycles if v.max_retry_cycles != null }
}
output "rotation_policies_name" {
  description = "Map of name values across all rotation_policies, keyed the same as var.rotation_policies except keys with no name are omitted"
  value       = { for k, v in vault_rotation_policy.rotation_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "rotation_policies_namespace" {
  description = "Map of namespace values across all rotation_policies, keyed the same as var.rotation_policies except keys with no namespace are omitted"
  value       = { for k, v in vault_rotation_policy.rotation_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

