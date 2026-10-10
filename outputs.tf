output "bedrockagent_flows_id" {
  description = "Map of id values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bedrockagent_flows_arn" {
  description = "Map of arn values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "bedrockagent_flows_created_at" {
  description = "Map of created_at values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "bedrockagent_flows_customer_encryption_key_arn" {
  description = "Map of customer_encryption_key_arn values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.customer_encryption_key_arn if v.customer_encryption_key_arn != null && length(v.customer_encryption_key_arn) > 0 }
}
output "bedrockagent_flows_definition" {
  description = "Map of definition values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.definition if v.definition != null && length(v.definition) > 0 }
}
output "bedrockagent_flows_description" {
  description = "Map of description values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagent_flows_execution_role_arn" {
  description = "Map of execution_role_arn values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.execution_role_arn if v.execution_role_arn != null && length(v.execution_role_arn) > 0 }
}
output "bedrockagent_flows_name" {
  description = "Map of name values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagent_flows_region" {
  description = "Map of region values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagent_flows_status" {
  description = "Map of status values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.status if v.status != null && length(v.status) > 0 }
}
output "bedrockagent_flows_tags" {
  description = "Map of tags values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrockagent_flows_tags_all" {
  description = "Map of tags_all values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "bedrockagent_flows_updated_at" {
  description = "Map of updated_at values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}
output "bedrockagent_flows_version" {
  description = "Map of version values across all bedrockagent_flows, keyed the same as var.bedrockagent_flows"
  value       = { for k, v in aws_bedrockagent_flow.bedrockagent_flows : k => v.version if v.version != null && length(v.version) > 0 }
}

