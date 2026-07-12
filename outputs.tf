output "api_management_product_policies_api_management_name" {
  description = "Map of api_management_name values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.api_management_name }
}
output "api_management_product_policies_product_id" {
  description = "Map of product_id values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.product_id }
}
output "api_management_product_policies_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.resource_group_name }
}
output "api_management_product_policies_xml_content" {
  description = "Map of xml_content values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.xml_content }
}
output "api_management_product_policies_xml_link" {
  description = "Map of xml_link values across all api_management_product_policies, keyed the same as var.api_management_product_policies"
  value       = { for k, v in azurerm_api_management_product_policy.api_management_product_policies : k => v.xml_link }
}

