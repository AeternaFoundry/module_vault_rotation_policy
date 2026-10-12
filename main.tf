resource "vault_rotation_policy" "rotation_policies" {
  for_each = var.rotation_policies

  max_retries_per_cycle = each.value.max_retries_per_cycle
  max_retry_cycles      = each.value.max_retry_cycles
  name                  = each.value.name
  namespace             = each.value.namespace
}

