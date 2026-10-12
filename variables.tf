variable "rotation_policies" {
  description = <<EOT
Map of rotation_policies, attributes below
Required:
    - max_retries_per_cycle
    - max_retry_cycles
    - name
Optional:
    - namespace
EOT

  type = map(object({
    max_retries_per_cycle = number
    max_retry_cycles      = number
    name                  = string
    namespace             = optional(string)
  }))
}

