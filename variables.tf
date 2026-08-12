variable "mssql_servers" {
  description = <<EOT
Map of mssql_servers, attributes below
Required:
    - location
    - name
    - resource_group_name
    - version
Optional:
    - administrator_login
    - administrator_login_password
    - administrator_login_password_key_vault_id (alternative to administrator_login_password - read from Key Vault instead)
    - administrator_login_password_key_vault_secret_name (alternative to administrator_login_password - read from Key Vault instead)
    - administrator_login_password_wo
    - administrator_login_password_wo_key_vault_id (alternative to administrator_login_password_wo - read from Key Vault instead)
    - administrator_login_password_wo_key_vault_secret_name (alternative to administrator_login_password_wo - read from Key Vault instead)
    - administrator_login_password_wo_version
    - connection_policy
    - express_vulnerability_assessment_enabled
    - minimum_tls_version
    - outbound_network_restriction_enabled
    - primary_user_assigned_identity_id
    - public_network_access_enabled
    - tags
    - transparent_data_encryption_key_vault_key_id
    - azuread_administrator (block)
    - identity (block)
Nested mssql_databases (azurerm_mssql_database):
    Required:
        - name
    Optional:
        - auto_pause_delay_in_minutes
        - collation
        - create_mode
        - creation_source_database_id
        - elastic_pool_id
        - enclave_type
        - geo_backup_enabled
        - ledger_enabled
        - license_type
        - maintenance_configuration_name
        - max_size_gb
        - min_capacity
        - read_replica_count
        - read_scale
        - recover_database_id
        - recovery_point_id
        - restore_dropped_database_id
        - restore_long_term_retention_backup_id
        - restore_point_in_time
        - sample_name
        - secondary_type
        - sku_name
        - storage_account_type
        - tags
        - transparent_data_encryption_enabled
        - transparent_data_encryption_key_automatic_rotation_enabled
        - transparent_data_encryption_key_vault_key_id
        - zone_redundant
        - identity (block)
        - import (block)
        - long_term_retention_policy (block)
        - short_term_retention_policy (block)
        - threat_detection_policy (block)
    Nested mssql_database_extended_auditing_policies (azurerm_mssql_database_extended_auditing_policy):
        Optional:
            - blob_storage_endpoint
            - enabled
            - log_monitoring_enabled
            - retention_in_days
            - storage_account_access_key
            - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
            - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
            - storage_account_access_key_is_secondary
    Nested mssql_job_agents (azurerm_mssql_job_agent):
        Required:
            - location
            - name
        Optional:
            - sku
            - tags
            - identity (block)
        Nested mssql_jobs (azurerm_mssql_job):
            Required:
                - name
            Optional:
                - description
            Nested mssql_job_schedules (azurerm_mssql_job_schedule):
                Required:
                    - type
                Optional:
                    - enabled
                    - end_time
                    - interval
                    - start_time
            Nested mssql_job_steps (azurerm_mssql_job_step):
                Required:
                    - job_step_index
                    - job_target_group_id
                    - name
                    - sql_script
                Optional:
                    - initial_retry_interval_seconds
                    - job_credential_id
                    - maximum_retry_interval_seconds
                    - retry_attempts
                    - retry_interval_backoff_multiplier
                    - timeout_seconds
                    - output_target (block)
        Nested mssql_job_credentials (azurerm_mssql_job_credential):
            Required:
                - name
                - username
            Optional:
                - password
                - password_key_vault_id (alternative to password - read from Key Vault instead)
                - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
                - password_wo
                - password_wo_version
        Nested mssql_job_target_groups (azurerm_mssql_job_target_group):
            Required:
                - name
            Optional:
                - job_target (block)
Nested mssql_failover_groups (azurerm_mssql_failover_group):
    Required:
        - name
        - partner_server (block)
        - read_write_endpoint_failover_policy (block)
    Optional:
        - databases
        - readonly_endpoint_failover_policy_enabled
        - tags
Nested mssql_firewall_rules (azurerm_mssql_firewall_rule):
    Required:
        - end_ip_address
        - name
        - start_ip_address
Nested mssql_outbound_firewall_rules (azurerm_mssql_outbound_firewall_rule):
    Required:
        - name
Nested mssql_server_dns_aliases (azurerm_mssql_server_dns_alias):
    Required:
        - name
Nested mssql_server_extended_auditing_policies (azurerm_mssql_server_extended_auditing_policy):
    Optional:
        - audit_actions_and_groups
        - blob_storage_endpoint
        - enabled
        - log_monitoring_enabled
        - predicate_expression
        - retention_in_days
        - storage_account_access_key
        - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
        - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
        - storage_account_access_key_is_secondary
        - storage_account_subscription_id
        - storage_account_subscription_id_key_vault_id (alternative to storage_account_subscription_id - read from Key Vault instead)
        - storage_account_subscription_id_key_vault_secret_name (alternative to storage_account_subscription_id - read from Key Vault instead)
Nested mssql_server_microsoft_support_auditing_policies (azurerm_mssql_server_microsoft_support_auditing_policy):
    Optional:
        - blob_storage_endpoint
        - enabled
        - log_monitoring_enabled
        - storage_account_access_key
        - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
        - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
        - storage_account_subscription_id
        - storage_account_subscription_id_key_vault_id (alternative to storage_account_subscription_id - read from Key Vault instead)
        - storage_account_subscription_id_key_vault_secret_name (alternative to storage_account_subscription_id - read from Key Vault instead)
Nested mssql_server_transparent_data_encryptions (azurerm_mssql_server_transparent_data_encryption):
    Optional:
        - auto_rotation_enabled
        - key_vault_key_id
Nested mssql_virtual_network_rules (azurerm_mssql_virtual_network_rule):
    Required:
        - name
        - subnet_id
    Optional:
        - ignore_missing_vnet_service_endpoint
EOT

  type = map(object({
    location                                              = string
    name                                                  = string
    resource_group_name                                   = string
    version                                               = string
    administrator_login                                   = optional(string)
    administrator_login_password                          = optional(string)
    administrator_login_password_key_vault_id             = optional(string)
    administrator_login_password_key_vault_secret_name    = optional(string)
    administrator_login_password_wo                       = optional(string)
    administrator_login_password_wo_key_vault_id          = optional(string)
    administrator_login_password_wo_key_vault_secret_name = optional(string)
    administrator_login_password_wo_version               = optional(number)
    connection_policy                                     = optional(string)
    express_vulnerability_assessment_enabled              = optional(bool)
    minimum_tls_version                                   = optional(string)
    outbound_network_restriction_enabled                  = optional(bool)
    primary_user_assigned_identity_id                     = optional(string)
    public_network_access_enabled                         = optional(bool)
    tags                                                  = optional(map(string))
    transparent_data_encryption_key_vault_key_id          = optional(string)
    azuread_administrator = optional(object({
      azuread_authentication_only = optional(bool)
      login_username              = string
      object_id                   = string
      tenant_id                   = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    mssql_databases = optional(map(object({
      name                                                       = string
      transparent_data_encryption_key_automatic_rotation_enabled = optional(bool)
      transparent_data_encryption_enabled                        = optional(bool)
      tags                                                       = optional(map(string))
      storage_account_type                                       = optional(string)
      sku_name                                                   = optional(string)
      secondary_type                                             = optional(string)
      sample_name                                                = optional(string)
      restore_point_in_time                                      = optional(string)
      restore_long_term_retention_backup_id                      = optional(string)
      restore_dropped_database_id                                = optional(string)
      recovery_point_id                                          = optional(string)
      recover_database_id                                        = optional(string)
      transparent_data_encryption_key_vault_key_id               = optional(string)
      read_scale                                                 = optional(bool)
      min_capacity                                               = optional(number)
      max_size_gb                                                = optional(number)
      maintenance_configuration_name                             = optional(string)
      license_type                                               = optional(string)
      ledger_enabled                                             = optional(bool)
      geo_backup_enabled                                         = optional(bool)
      enclave_type                                               = optional(string)
      elastic_pool_id                                            = optional(string)
      creation_source_database_id                                = optional(string)
      create_mode                                                = optional(string)
      collation                                                  = optional(string)
      auto_pause_delay_in_minutes                                = optional(number)
      read_replica_count                                         = optional(number)
      zone_redundant                                             = optional(bool)
      identity = optional(object({
        identity_ids = set(string)
        type         = string
      }))
      import = optional(object({
        administrator_login          = string
        administrator_login_password = string
        authentication_type          = string
        storage_account_id           = optional(string)
        storage_key                  = string
        storage_key_type             = string
        storage_uri                  = string
      }))
      long_term_retention_policy = optional(object({
        monthly_retention = optional(string)
        week_of_year      = optional(number)
        weekly_retention  = optional(string)
        yearly_retention  = optional(string)
      }))
      short_term_retention_policy = optional(object({
        backup_interval_in_hours = optional(number)
        retention_days           = number
      }))
      threat_detection_policy = optional(object({
        disabled_alerts              = optional(set(string))
        email_account_admins_enabled = optional(bool)
        email_addresses              = optional(set(string))
        retention_days               = optional(number)
        state                        = optional(string)
        storage_account_access_key   = optional(string)
        storage_endpoint             = optional(string)
      }))
      mssql_database_extended_auditing_policies = optional(map(object({
        blob_storage_endpoint                            = optional(string)
        enabled                                          = optional(bool)
        log_monitoring_enabled                           = optional(bool)
        retention_in_days                                = optional(number)
        storage_account_access_key                       = optional(string)
        storage_account_access_key_key_vault_id          = optional(string)
        storage_account_access_key_key_vault_secret_name = optional(string)
        storage_account_access_key_is_secondary          = optional(bool)
      })))
      mssql_job_agents = optional(map(object({
        location = string
        name     = string
        sku      = optional(string)
        tags     = optional(map(string))
        identity = optional(object({
          identity_ids = set(string)
          type         = string
        }))
        mssql_jobs = optional(map(object({
          name        = string
          description = optional(string)
          mssql_job_schedules = optional(map(object({
            type       = string
            enabled    = optional(bool)
            end_time   = optional(string)
            interval   = optional(string)
            start_time = optional(string)
          })))
          mssql_job_steps = optional(map(object({
            job_step_index                    = number
            job_target_group_id               = string
            name                              = string
            sql_script                        = string
            initial_retry_interval_seconds    = optional(number)
            job_credential_id                 = optional(string)
            maximum_retry_interval_seconds    = optional(number)
            retry_attempts                    = optional(number)
            retry_interval_backoff_multiplier = optional(number)
            timeout_seconds                   = optional(number)
            output_target = optional(object({
              job_credential_id = optional(string)
              mssql_database_id = string
              schema_name       = optional(string)
              table_name        = string
            }))
          })))
        })))
        mssql_job_credentials = optional(map(object({
          name                           = string
          username                       = string
          password                       = optional(string)
          password_key_vault_id          = optional(string)
          password_key_vault_secret_name = optional(string)
          password_wo                    = optional(string)
          password_wo_version            = optional(number)
        })))
        mssql_job_target_groups = optional(map(object({
          name = string
          job_target = optional(list(object({
            database_name     = optional(string)
            elastic_pool_name = optional(string)
            job_credential_id = optional(string)
            membership_type   = optional(string)
            server_name       = string
          })))
        })))
      })))
    })))
    mssql_failover_groups = optional(map(object({
      name                                      = string
      databases                                 = optional(set(string))
      readonly_endpoint_failover_policy_enabled = optional(bool)
      tags                                      = optional(map(string))
      partner_server = list(object({
        id = string
      }))
      read_write_endpoint_failover_policy = object({
        grace_minutes = optional(number)
        mode          = string
      })
    })))
    mssql_firewall_rules = optional(map(object({
      end_ip_address   = string
      name             = string
      start_ip_address = string
    })))
    mssql_outbound_firewall_rules = optional(map(object({
      name = string
    })))
    mssql_server_dns_aliases = optional(map(object({
      name = string
    })))
    mssql_server_extended_auditing_policies = optional(map(object({
      audit_actions_and_groups                              = optional(list(string))
      blob_storage_endpoint                                 = optional(string)
      enabled                                               = optional(bool)
      log_monitoring_enabled                                = optional(bool)
      predicate_expression                                  = optional(string)
      retention_in_days                                     = optional(number)
      storage_account_access_key                            = optional(string)
      storage_account_access_key_key_vault_id               = optional(string)
      storage_account_access_key_key_vault_secret_name      = optional(string)
      storage_account_access_key_is_secondary               = optional(bool)
      storage_account_subscription_id                       = optional(string)
      storage_account_subscription_id_key_vault_id          = optional(string)
      storage_account_subscription_id_key_vault_secret_name = optional(string)
    })))
    mssql_server_microsoft_support_auditing_policies = optional(map(object({
      blob_storage_endpoint                                 = optional(string)
      enabled                                               = optional(bool)
      log_monitoring_enabled                                = optional(bool)
      storage_account_access_key                            = optional(string)
      storage_account_access_key_key_vault_id               = optional(string)
      storage_account_access_key_key_vault_secret_name      = optional(string)
      storage_account_subscription_id                       = optional(string)
      storage_account_subscription_id_key_vault_id          = optional(string)
      storage_account_subscription_id_key_vault_secret_name = optional(string)
    })))
    mssql_server_transparent_data_encryptions = optional(map(object({
      auto_rotation_enabled = optional(bool)
      key_vault_key_id      = optional(string)
    })))
    mssql_virtual_network_rules = optional(map(object({
      name                                 = string
      subnet_id                            = string
      ignore_missing_vnet_service_endpoint = optional(bool)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.mssql_servers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_databases, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mssql_servers : [for k1, v1 in coalesce(v0.mssql_databases, {}) : [for kk in keys(coalesce(v1.mssql_database_extended_auditing_policies, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.mssql_servers : [for k1, v1 in coalesce(v0.mssql_databases, {}) : [for kk in keys(coalesce(v1.mssql_job_agents, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.mssql_servers : [for k1, v1 in coalesce(v0.mssql_databases, {}) : [for k2, v2 in coalesce(v1.mssql_job_agents, {}) : [for kk in keys(coalesce(v2.mssql_jobs, {})) : !strcontains(kk, "/")]]]]),
      flatten([for k0, v0 in var.mssql_servers : [for k1, v1 in coalesce(v0.mssql_databases, {}) : [for k2, v2 in coalesce(v1.mssql_job_agents, {}) : [for k3, v3 in coalesce(v2.mssql_jobs, {}) : [for kk in keys(coalesce(v3.mssql_job_schedules, {})) : !strcontains(kk, "/")]]]]]),
      flatten([for k0, v0 in var.mssql_servers : [for k1, v1 in coalesce(v0.mssql_databases, {}) : [for k2, v2 in coalesce(v1.mssql_job_agents, {}) : [for k3, v3 in coalesce(v2.mssql_jobs, {}) : [for kk in keys(coalesce(v3.mssql_job_steps, {})) : !strcontains(kk, "/")]]]]]),
      flatten([for k0, v0 in var.mssql_servers : [for k1, v1 in coalesce(v0.mssql_databases, {}) : [for k2, v2 in coalesce(v1.mssql_job_agents, {}) : [for kk in keys(coalesce(v2.mssql_job_credentials, {})) : !strcontains(kk, "/")]]]]),
      flatten([for k0, v0 in var.mssql_servers : [for k1, v1 in coalesce(v0.mssql_databases, {}) : [for k2, v2 in coalesce(v1.mssql_job_agents, {}) : [for kk in keys(coalesce(v2.mssql_job_target_groups, {})) : !strcontains(kk, "/")]]]]),
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_failover_groups, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_firewall_rules, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_outbound_firewall_rules, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_server_dns_aliases, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_server_extended_auditing_policies, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_server_microsoft_support_auditing_policies, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_server_transparent_data_encryptions, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_virtual_network_rules, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
