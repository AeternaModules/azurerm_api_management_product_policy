output "api_management_product_policies_id" {
  description = "Map of id values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_product_policies_api_management_name" {
  description = "Map of api_management_name values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_product_policies_product_id" {
  description = "Map of product_id values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.product_id if v.product_id != null && length(v.product_id) > 0 }
}
output "api_management_product_policies_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_product_policies_xml_content" {
  description = "Map of xml_content values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.xml_content if v.xml_content != null && length(v.xml_content) > 0 }
}
output "api_management_product_policies_xml_link" {
  description = "Map of xml_link values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.xml_link if v.xml_link != null && length(v.xml_link) > 0 }
}

