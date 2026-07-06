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
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_product_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
  # path: product_id
  #   source:    [from validate.ApiManagementChildName] !matched
}

