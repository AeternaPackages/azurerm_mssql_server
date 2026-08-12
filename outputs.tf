# --- azurerm_mssql_server ---
output "mssql_servers_id" {
  description = "Map of id values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_id
}

output "mssql_servers_administrator_login" {
  description = "Map of administrator_login values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_administrator_login
}

output "mssql_servers_administrator_login_password" {
  description = "Map of administrator_login_password values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_administrator_login_password
  sensitive   = true
}

output "mssql_servers_administrator_login_password_wo" {
  description = "Map of administrator_login_password_wo values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_administrator_login_password_wo
  sensitive   = true
}

output "mssql_servers_administrator_login_password_wo_version" {
  description = "Map of administrator_login_password_wo_version values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_administrator_login_password_wo_version
}

output "mssql_servers_azuread_administrator" {
  description = "Map of azuread_administrator values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_azuread_administrator
}

output "mssql_servers_connection_policy" {
  description = "Map of connection_policy values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_connection_policy
}

output "mssql_servers_express_vulnerability_assessment_enabled" {
  description = "Map of express_vulnerability_assessment_enabled values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_express_vulnerability_assessment_enabled
}

output "mssql_servers_fully_qualified_domain_name" {
  description = "Map of fully_qualified_domain_name values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_fully_qualified_domain_name
}

output "mssql_servers_identity" {
  description = "Map of identity values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_identity
}

output "mssql_servers_location" {
  description = "Map of location values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_location
}

output "mssql_servers_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_minimum_tls_version
}

output "mssql_servers_name" {
  description = "Map of name values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_name
}

output "mssql_servers_outbound_network_restriction_enabled" {
  description = "Map of outbound_network_restriction_enabled values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_outbound_network_restriction_enabled
}

output "mssql_servers_primary_user_assigned_identity_id" {
  description = "Map of primary_user_assigned_identity_id values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_primary_user_assigned_identity_id
}

output "mssql_servers_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_public_network_access_enabled
}

output "mssql_servers_resource_group_name" {
  description = "Map of resource_group_name values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_resource_group_name
}

output "mssql_servers_restorable_dropped_database_ids" {
  description = "Map of restorable_dropped_database_ids values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_restorable_dropped_database_ids
}

output "mssql_servers_tags" {
  description = "Map of tags values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_tags
}

output "mssql_servers_transparent_data_encryption_key_vault_key_id" {
  description = "Map of transparent_data_encryption_key_vault_key_id values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_transparent_data_encryption_key_vault_key_id
}

output "mssql_servers_version" {
  description = "Map of version values across all mssql_servers, keyed the same as var.mssql_servers"
  value       = module.mssql_servers.mssql_servers_version
}

# --- azurerm_mssql_database ---
output "mssql_databases_id" {
  description = "Map of id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_id
}

output "mssql_databases_auto_pause_delay_in_minutes" {
  description = "Map of auto_pause_delay_in_minutes values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_auto_pause_delay_in_minutes
}

output "mssql_databases_collation" {
  description = "Map of collation values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_collation
}

output "mssql_databases_create_mode" {
  description = "Map of create_mode values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_create_mode
}

output "mssql_databases_creation_source_database_id" {
  description = "Map of creation_source_database_id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_creation_source_database_id
}

output "mssql_databases_elastic_pool_id" {
  description = "Map of elastic_pool_id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_elastic_pool_id
}

output "mssql_databases_enclave_type" {
  description = "Map of enclave_type values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_enclave_type
}

output "mssql_databases_geo_backup_enabled" {
  description = "Map of geo_backup_enabled values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_geo_backup_enabled
}

output "mssql_databases_identity" {
  description = "Map of identity values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_identity
}

output "mssql_databases_import" {
  description = "Map of import values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_import
  sensitive   = true
}

output "mssql_databases_ledger_enabled" {
  description = "Map of ledger_enabled values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_ledger_enabled
}

output "mssql_databases_license_type" {
  description = "Map of license_type values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_license_type
}

output "mssql_databases_long_term_retention_policy" {
  description = "Map of long_term_retention_policy values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_long_term_retention_policy
}

output "mssql_databases_maintenance_configuration_name" {
  description = "Map of maintenance_configuration_name values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_maintenance_configuration_name
}

output "mssql_databases_max_size_gb" {
  description = "Map of max_size_gb values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_max_size_gb
}

output "mssql_databases_min_capacity" {
  description = "Map of min_capacity values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_min_capacity
}

output "mssql_databases_name" {
  description = "Map of name values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_name
}

output "mssql_databases_read_replica_count" {
  description = "Map of read_replica_count values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_read_replica_count
}

output "mssql_databases_read_scale" {
  description = "Map of read_scale values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_read_scale
}

output "mssql_databases_recover_database_id" {
  description = "Map of recover_database_id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_recover_database_id
}

output "mssql_databases_recovery_point_id" {
  description = "Map of recovery_point_id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_recovery_point_id
}

output "mssql_databases_restore_dropped_database_id" {
  description = "Map of restore_dropped_database_id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_restore_dropped_database_id
}

output "mssql_databases_restore_long_term_retention_backup_id" {
  description = "Map of restore_long_term_retention_backup_id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_restore_long_term_retention_backup_id
}

output "mssql_databases_restore_point_in_time" {
  description = "Map of restore_point_in_time values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_restore_point_in_time
}

output "mssql_databases_sample_name" {
  description = "Map of sample_name values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_sample_name
}

output "mssql_databases_secondary_type" {
  description = "Map of secondary_type values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_secondary_type
}

output "mssql_databases_server_id" {
  description = "Map of server_id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_server_id
}

output "mssql_databases_short_term_retention_policy" {
  description = "Map of short_term_retention_policy values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_short_term_retention_policy
}

output "mssql_databases_sku_name" {
  description = "Map of sku_name values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_sku_name
}

output "mssql_databases_storage_account_type" {
  description = "Map of storage_account_type values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_storage_account_type
}

output "mssql_databases_tags" {
  description = "Map of tags values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_tags
}

output "mssql_databases_threat_detection_policy" {
  description = "Map of threat_detection_policy values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_threat_detection_policy
  sensitive   = true
}

output "mssql_databases_transparent_data_encryption_enabled" {
  description = "Map of transparent_data_encryption_enabled values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_transparent_data_encryption_enabled
}

output "mssql_databases_transparent_data_encryption_key_automatic_rotation_enabled" {
  description = "Map of transparent_data_encryption_key_automatic_rotation_enabled values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_transparent_data_encryption_key_automatic_rotation_enabled
}

output "mssql_databases_transparent_data_encryption_key_vault_key_id" {
  description = "Map of transparent_data_encryption_key_vault_key_id values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_transparent_data_encryption_key_vault_key_id
}

output "mssql_databases_zone_redundant" {
  description = "Map of zone_redundant values across all mssql_databases, keyed the same as var.mssql_databases"
  value       = module.mssql_databases.mssql_databases_zone_redundant
}

# --- azurerm_mssql_failover_group ---
output "mssql_failover_groups_id" {
  description = "Map of id values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = module.mssql_failover_groups.mssql_failover_groups_id
}

output "mssql_failover_groups_databases" {
  description = "Map of databases values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = module.mssql_failover_groups.mssql_failover_groups_databases
}

output "mssql_failover_groups_name" {
  description = "Map of name values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = module.mssql_failover_groups.mssql_failover_groups_name
}

output "mssql_failover_groups_partner_server" {
  description = "Map of partner_server values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = module.mssql_failover_groups.mssql_failover_groups_partner_server
}

output "mssql_failover_groups_read_write_endpoint_failover_policy" {
  description = "Map of read_write_endpoint_failover_policy values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = module.mssql_failover_groups.mssql_failover_groups_read_write_endpoint_failover_policy
}

output "mssql_failover_groups_readonly_endpoint_failover_policy_enabled" {
  description = "Map of readonly_endpoint_failover_policy_enabled values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = module.mssql_failover_groups.mssql_failover_groups_readonly_endpoint_failover_policy_enabled
}

output "mssql_failover_groups_server_id" {
  description = "Map of server_id values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = module.mssql_failover_groups.mssql_failover_groups_server_id
}

output "mssql_failover_groups_tags" {
  description = "Map of tags values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = module.mssql_failover_groups.mssql_failover_groups_tags
}

# --- azurerm_mssql_firewall_rule ---
output "mssql_firewall_rules_id" {
  description = "Map of id values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = module.mssql_firewall_rules.mssql_firewall_rules_id
}

output "mssql_firewall_rules_end_ip_address" {
  description = "Map of end_ip_address values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = module.mssql_firewall_rules.mssql_firewall_rules_end_ip_address
}

output "mssql_firewall_rules_name" {
  description = "Map of name values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = module.mssql_firewall_rules.mssql_firewall_rules_name
}

output "mssql_firewall_rules_server_id" {
  description = "Map of server_id values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = module.mssql_firewall_rules.mssql_firewall_rules_server_id
}

output "mssql_firewall_rules_start_ip_address" {
  description = "Map of start_ip_address values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = module.mssql_firewall_rules.mssql_firewall_rules_start_ip_address
}

# --- azurerm_mssql_outbound_firewall_rule ---
output "mssql_outbound_firewall_rules_id" {
  description = "Map of id values across all mssql_outbound_firewall_rules, keyed the same as var.mssql_outbound_firewall_rules"
  value       = module.mssql_outbound_firewall_rules.mssql_outbound_firewall_rules_id
}

output "mssql_outbound_firewall_rules_name" {
  description = "Map of name values across all mssql_outbound_firewall_rules, keyed the same as var.mssql_outbound_firewall_rules"
  value       = module.mssql_outbound_firewall_rules.mssql_outbound_firewall_rules_name
}

output "mssql_outbound_firewall_rules_server_id" {
  description = "Map of server_id values across all mssql_outbound_firewall_rules, keyed the same as var.mssql_outbound_firewall_rules"
  value       = module.mssql_outbound_firewall_rules.mssql_outbound_firewall_rules_server_id
}

# --- azurerm_mssql_server_dns_alias ---
output "mssql_server_dns_aliases_id" {
  description = "Map of id values across all mssql_server_dns_aliases, keyed the same as var.mssql_server_dns_aliases"
  value       = module.mssql_server_dns_aliases.mssql_server_dns_aliases_id
}

output "mssql_server_dns_aliases_dns_record" {
  description = "Map of dns_record values across all mssql_server_dns_aliases, keyed the same as var.mssql_server_dns_aliases"
  value       = module.mssql_server_dns_aliases.mssql_server_dns_aliases_dns_record
}

output "mssql_server_dns_aliases_mssql_server_id" {
  description = "Map of mssql_server_id values across all mssql_server_dns_aliases, keyed the same as var.mssql_server_dns_aliases"
  value       = module.mssql_server_dns_aliases.mssql_server_dns_aliases_mssql_server_id
}

output "mssql_server_dns_aliases_name" {
  description = "Map of name values across all mssql_server_dns_aliases, keyed the same as var.mssql_server_dns_aliases"
  value       = module.mssql_server_dns_aliases.mssql_server_dns_aliases_name
}

# --- azurerm_mssql_server_extended_auditing_policy ---
output "mssql_server_extended_auditing_policies_id" {
  description = "Map of id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_id
}

output "mssql_server_extended_auditing_policies_audit_actions_and_groups" {
  description = "Map of audit_actions_and_groups values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_audit_actions_and_groups
}

output "mssql_server_extended_auditing_policies_blob_storage_endpoint" {
  description = "Map of blob_storage_endpoint values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_blob_storage_endpoint
}

output "mssql_server_extended_auditing_policies_enabled" {
  description = "Map of enabled values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_enabled
}

output "mssql_server_extended_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_log_monitoring_enabled
}

output "mssql_server_extended_auditing_policies_predicate_expression" {
  description = "Map of predicate_expression values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_predicate_expression
}

output "mssql_server_extended_auditing_policies_retention_in_days" {
  description = "Map of retention_in_days values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_retention_in_days
}

output "mssql_server_extended_auditing_policies_server_id" {
  description = "Map of server_id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_server_id
}

output "mssql_server_extended_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_storage_account_access_key
  sensitive   = true
}

output "mssql_server_extended_auditing_policies_storage_account_access_key_is_secondary" {
  description = "Map of storage_account_access_key_is_secondary values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_storage_account_access_key_is_secondary
}

output "mssql_server_extended_auditing_policies_storage_account_subscription_id" {
  description = "Map of storage_account_subscription_id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = module.mssql_server_extended_auditing_policies.mssql_server_extended_auditing_policies_storage_account_subscription_id
  sensitive   = true
}

# --- azurerm_mssql_server_microsoft_support_auditing_policy ---
output "mssql_server_microsoft_support_auditing_policies_id" {
  description = "Map of id values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = module.mssql_server_microsoft_support_auditing_policies.mssql_server_microsoft_support_auditing_policies_id
}

output "mssql_server_microsoft_support_auditing_policies_blob_storage_endpoint" {
  description = "Map of blob_storage_endpoint values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = module.mssql_server_microsoft_support_auditing_policies.mssql_server_microsoft_support_auditing_policies_blob_storage_endpoint
}

output "mssql_server_microsoft_support_auditing_policies_enabled" {
  description = "Map of enabled values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = module.mssql_server_microsoft_support_auditing_policies.mssql_server_microsoft_support_auditing_policies_enabled
}

output "mssql_server_microsoft_support_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = module.mssql_server_microsoft_support_auditing_policies.mssql_server_microsoft_support_auditing_policies_log_monitoring_enabled
}

output "mssql_server_microsoft_support_auditing_policies_server_id" {
  description = "Map of server_id values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = module.mssql_server_microsoft_support_auditing_policies.mssql_server_microsoft_support_auditing_policies_server_id
}

output "mssql_server_microsoft_support_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = module.mssql_server_microsoft_support_auditing_policies.mssql_server_microsoft_support_auditing_policies_storage_account_access_key
  sensitive   = true
}

output "mssql_server_microsoft_support_auditing_policies_storage_account_subscription_id" {
  description = "Map of storage_account_subscription_id values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = module.mssql_server_microsoft_support_auditing_policies.mssql_server_microsoft_support_auditing_policies_storage_account_subscription_id
  sensitive   = true
}

# --- azurerm_mssql_server_transparent_data_encryption ---
output "mssql_server_transparent_data_encryptions_id" {
  description = "Map of id values across all mssql_server_transparent_data_encryptions, keyed the same as var.mssql_server_transparent_data_encryptions"
  value       = module.mssql_server_transparent_data_encryptions.mssql_server_transparent_data_encryptions_id
}

output "mssql_server_transparent_data_encryptions_auto_rotation_enabled" {
  description = "Map of auto_rotation_enabled values across all mssql_server_transparent_data_encryptions, keyed the same as var.mssql_server_transparent_data_encryptions"
  value       = module.mssql_server_transparent_data_encryptions.mssql_server_transparent_data_encryptions_auto_rotation_enabled
}

output "mssql_server_transparent_data_encryptions_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all mssql_server_transparent_data_encryptions, keyed the same as var.mssql_server_transparent_data_encryptions"
  value       = module.mssql_server_transparent_data_encryptions.mssql_server_transparent_data_encryptions_key_vault_key_id
}

output "mssql_server_transparent_data_encryptions_server_id" {
  description = "Map of server_id values across all mssql_server_transparent_data_encryptions, keyed the same as var.mssql_server_transparent_data_encryptions"
  value       = module.mssql_server_transparent_data_encryptions.mssql_server_transparent_data_encryptions_server_id
}

# --- azurerm_mssql_virtual_network_rule ---
output "mssql_virtual_network_rules_id" {
  description = "Map of id values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = module.mssql_virtual_network_rules.mssql_virtual_network_rules_id
}

output "mssql_virtual_network_rules_ignore_missing_vnet_service_endpoint" {
  description = "Map of ignore_missing_vnet_service_endpoint values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = module.mssql_virtual_network_rules.mssql_virtual_network_rules_ignore_missing_vnet_service_endpoint
}

output "mssql_virtual_network_rules_name" {
  description = "Map of name values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = module.mssql_virtual_network_rules.mssql_virtual_network_rules_name
}

output "mssql_virtual_network_rules_server_id" {
  description = "Map of server_id values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = module.mssql_virtual_network_rules.mssql_virtual_network_rules_server_id
}

output "mssql_virtual_network_rules_subnet_id" {
  description = "Map of subnet_id values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = module.mssql_virtual_network_rules.mssql_virtual_network_rules_subnet_id
}

# --- azurerm_mssql_database_extended_auditing_policy ---
output "mssql_database_extended_auditing_policies_id" {
  description = "Map of id values across all mssql_database_extended_auditing_policies, keyed the same as var.mssql_database_extended_auditing_policies"
  value       = module.mssql_database_extended_auditing_policies.mssql_database_extended_auditing_policies_id
}

output "mssql_database_extended_auditing_policies_blob_storage_endpoint" {
  description = "Map of blob_storage_endpoint values across all mssql_database_extended_auditing_policies, keyed the same as var.mssql_database_extended_auditing_policies"
  value       = module.mssql_database_extended_auditing_policies.mssql_database_extended_auditing_policies_blob_storage_endpoint
}

output "mssql_database_extended_auditing_policies_database_id" {
  description = "Map of database_id values across all mssql_database_extended_auditing_policies, keyed the same as var.mssql_database_extended_auditing_policies"
  value       = module.mssql_database_extended_auditing_policies.mssql_database_extended_auditing_policies_database_id
}

output "mssql_database_extended_auditing_policies_enabled" {
  description = "Map of enabled values across all mssql_database_extended_auditing_policies, keyed the same as var.mssql_database_extended_auditing_policies"
  value       = module.mssql_database_extended_auditing_policies.mssql_database_extended_auditing_policies_enabled
}

output "mssql_database_extended_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all mssql_database_extended_auditing_policies, keyed the same as var.mssql_database_extended_auditing_policies"
  value       = module.mssql_database_extended_auditing_policies.mssql_database_extended_auditing_policies_log_monitoring_enabled
}

output "mssql_database_extended_auditing_policies_retention_in_days" {
  description = "Map of retention_in_days values across all mssql_database_extended_auditing_policies, keyed the same as var.mssql_database_extended_auditing_policies"
  value       = module.mssql_database_extended_auditing_policies.mssql_database_extended_auditing_policies_retention_in_days
}

output "mssql_database_extended_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_database_extended_auditing_policies, keyed the same as var.mssql_database_extended_auditing_policies"
  value       = module.mssql_database_extended_auditing_policies.mssql_database_extended_auditing_policies_storage_account_access_key
  sensitive   = true
}

output "mssql_database_extended_auditing_policies_storage_account_access_key_is_secondary" {
  description = "Map of storage_account_access_key_is_secondary values across all mssql_database_extended_auditing_policies, keyed the same as var.mssql_database_extended_auditing_policies"
  value       = module.mssql_database_extended_auditing_policies.mssql_database_extended_auditing_policies_storage_account_access_key_is_secondary
}

# --- azurerm_mssql_job_agent ---
output "mssql_job_agents_id" {
  description = "Map of id values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = module.mssql_job_agents.mssql_job_agents_id
}

output "mssql_job_agents_database_id" {
  description = "Map of database_id values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = module.mssql_job_agents.mssql_job_agents_database_id
}

output "mssql_job_agents_identity" {
  description = "Map of identity values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = module.mssql_job_agents.mssql_job_agents_identity
}

output "mssql_job_agents_location" {
  description = "Map of location values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = module.mssql_job_agents.mssql_job_agents_location
}

output "mssql_job_agents_name" {
  description = "Map of name values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = module.mssql_job_agents.mssql_job_agents_name
}

output "mssql_job_agents_sku" {
  description = "Map of sku values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = module.mssql_job_agents.mssql_job_agents_sku
}

output "mssql_job_agents_tags" {
  description = "Map of tags values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = module.mssql_job_agents.mssql_job_agents_tags
}

# --- azurerm_mssql_job ---
output "mssql_jobs_id" {
  description = "Map of id values across all mssql_jobs, keyed the same as var.mssql_jobs"
  value       = module.mssql_jobs.mssql_jobs_id
}

output "mssql_jobs_description" {
  description = "Map of description values across all mssql_jobs, keyed the same as var.mssql_jobs"
  value       = module.mssql_jobs.mssql_jobs_description
}

output "mssql_jobs_job_agent_id" {
  description = "Map of job_agent_id values across all mssql_jobs, keyed the same as var.mssql_jobs"
  value       = module.mssql_jobs.mssql_jobs_job_agent_id
}

output "mssql_jobs_name" {
  description = "Map of name values across all mssql_jobs, keyed the same as var.mssql_jobs"
  value       = module.mssql_jobs.mssql_jobs_name
}

# --- azurerm_mssql_job_credential ---
output "mssql_job_credentials_id" {
  description = "Map of id values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = module.mssql_job_credentials.mssql_job_credentials_id
}

output "mssql_job_credentials_job_agent_id" {
  description = "Map of job_agent_id values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = module.mssql_job_credentials.mssql_job_credentials_job_agent_id
}

output "mssql_job_credentials_name" {
  description = "Map of name values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = module.mssql_job_credentials.mssql_job_credentials_name
}

output "mssql_job_credentials_password" {
  description = "Map of password values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = module.mssql_job_credentials.mssql_job_credentials_password
  sensitive   = true
}

output "mssql_job_credentials_password_wo" {
  description = "Map of password_wo values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = module.mssql_job_credentials.mssql_job_credentials_password_wo
}

output "mssql_job_credentials_password_wo_version" {
  description = "Map of password_wo_version values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = module.mssql_job_credentials.mssql_job_credentials_password_wo_version
}

output "mssql_job_credentials_username" {
  description = "Map of username values across all mssql_job_credentials, keyed the same as var.mssql_job_credentials"
  value       = module.mssql_job_credentials.mssql_job_credentials_username
}

# --- azurerm_mssql_job_target_group ---
output "mssql_job_target_groups_id" {
  description = "Map of id values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = module.mssql_job_target_groups.mssql_job_target_groups_id
}

output "mssql_job_target_groups_job_agent_id" {
  description = "Map of job_agent_id values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = module.mssql_job_target_groups.mssql_job_target_groups_job_agent_id
}

output "mssql_job_target_groups_job_target" {
  description = "Map of job_target values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = module.mssql_job_target_groups.mssql_job_target_groups_job_target
}

output "mssql_job_target_groups_name" {
  description = "Map of name values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = module.mssql_job_target_groups.mssql_job_target_groups_name
}

# --- azurerm_mssql_job_schedule ---
output "mssql_job_schedules_id" {
  description = "Map of id values across all mssql_job_schedules, keyed the same as var.mssql_job_schedules"
  value       = module.mssql_job_schedules.mssql_job_schedules_id
}

output "mssql_job_schedules_enabled" {
  description = "Map of enabled values across all mssql_job_schedules, keyed the same as var.mssql_job_schedules"
  value       = module.mssql_job_schedules.mssql_job_schedules_enabled
}

output "mssql_job_schedules_end_time" {
  description = "Map of end_time values across all mssql_job_schedules, keyed the same as var.mssql_job_schedules"
  value       = module.mssql_job_schedules.mssql_job_schedules_end_time
}

output "mssql_job_schedules_interval" {
  description = "Map of interval values across all mssql_job_schedules, keyed the same as var.mssql_job_schedules"
  value       = module.mssql_job_schedules.mssql_job_schedules_interval
}

output "mssql_job_schedules_job_id" {
  description = "Map of job_id values across all mssql_job_schedules, keyed the same as var.mssql_job_schedules"
  value       = module.mssql_job_schedules.mssql_job_schedules_job_id
}

output "mssql_job_schedules_start_time" {
  description = "Map of start_time values across all mssql_job_schedules, keyed the same as var.mssql_job_schedules"
  value       = module.mssql_job_schedules.mssql_job_schedules_start_time
}

output "mssql_job_schedules_type" {
  description = "Map of type values across all mssql_job_schedules, keyed the same as var.mssql_job_schedules"
  value       = module.mssql_job_schedules.mssql_job_schedules_type
}

# --- azurerm_mssql_job_step ---
output "mssql_job_steps_id" {
  description = "Map of id values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_id
}

output "mssql_job_steps_initial_retry_interval_seconds" {
  description = "Map of initial_retry_interval_seconds values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_initial_retry_interval_seconds
}

output "mssql_job_steps_job_credential_id" {
  description = "Map of job_credential_id values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_job_credential_id
}

output "mssql_job_steps_job_id" {
  description = "Map of job_id values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_job_id
}

output "mssql_job_steps_job_step_index" {
  description = "Map of job_step_index values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_job_step_index
}

output "mssql_job_steps_job_target_group_id" {
  description = "Map of job_target_group_id values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_job_target_group_id
}

output "mssql_job_steps_maximum_retry_interval_seconds" {
  description = "Map of maximum_retry_interval_seconds values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_maximum_retry_interval_seconds
}

output "mssql_job_steps_name" {
  description = "Map of name values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_name
}

output "mssql_job_steps_output_target" {
  description = "Map of output_target values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_output_target
}

output "mssql_job_steps_retry_attempts" {
  description = "Map of retry_attempts values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_retry_attempts
}

output "mssql_job_steps_retry_interval_backoff_multiplier" {
  description = "Map of retry_interval_backoff_multiplier values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_retry_interval_backoff_multiplier
}

output "mssql_job_steps_sql_script" {
  description = "Map of sql_script values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_sql_script
}

output "mssql_job_steps_timeout_seconds" {
  description = "Map of timeout_seconds values across all mssql_job_steps, keyed the same as var.mssql_job_steps"
  value       = module.mssql_job_steps.mssql_job_steps_timeout_seconds
}


