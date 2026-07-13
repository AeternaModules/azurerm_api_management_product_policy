variable "api_management_product_policies" {
  description = <<EOT
Map of api_management_product_policies, attributes below
Required:
    - api_management_name
    - product_id
    - resource_group_name
Optional:
    - xml_content
    - xml_link
EOT

  type = map(object({
    api_management_name = string
    product_id          = string
    resource_group_name = string
    xml_content         = optional(string)
    xml_link            = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_policies : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_policies : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_policies : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

