locals {
  mssql_servers = { for k1, v1 in var.mssql_servers : k1 => { administrator_login = v1.administrator_login, administrator_login_password = v1.administrator_login_password, administrator_login_password_key_vault_id = v1.administrator_login_password_key_vault_id, administrator_login_password_key_vault_secret_name = v1.administrator_login_password_key_vault_secret_name, administrator_login_password_wo = v1.administrator_login_password_wo, administrator_login_password_wo_key_vault_id = v1.administrator_login_password_wo_key_vault_id, administrator_login_password_wo_key_vault_secret_name = v1.administrator_login_password_wo_key_vault_secret_name, administrator_login_password_wo_version = v1.administrator_login_password_wo_version, azuread_administrator = v1.azuread_administrator, connection_policy = v1.connection_policy, express_vulnerability_assessment_enabled = v1.express_vulnerability_assessment_enabled, identity = v1.identity, location = v1.location, minimum_tls_version = v1.minimum_tls_version, name = v1.name, outbound_network_restriction_enabled = v1.outbound_network_restriction_enabled, primary_user_assigned_identity_id = v1.primary_user_assigned_identity_id, public_network_access_enabled = v1.public_network_access_enabled, resource_group_name = v1.resource_group_name, tags = v1.tags, transparent_data_encryption_key_vault_key_id = v1.transparent_data_encryption_key_vault_key_id, version = v1.version } }

  mssql_databases = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_databases, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_failover_groups = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_failover_groups, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_firewall_rules = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_firewall_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_outbound_firewall_rules = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_outbound_firewall_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_server_dns_aliases = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_server_dns_aliases, {}) :
      "${k1}/${k2}" => merge(v2, {
        mssql_server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_server_extended_auditing_policies = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_server_extended_auditing_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_server_microsoft_support_auditing_policies = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_server_microsoft_support_auditing_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_server_transparent_data_encryptions = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_server_transparent_data_encryptions, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_virtual_network_rules = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_virtual_network_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)

  mssql_database_extended_auditing_policies = merge([
    for k1, v1 in var.mssql_servers : merge([
      for k2, v2 in coalesce(v1.mssql_databases, {}) : {
        for k3, v3 in coalesce(v2.mssql_database_extended_auditing_policies, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          database_id = module.mssql_databases.mssql_databases_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  mssql_job_agents = merge([
    for k1, v1 in var.mssql_servers : merge([
      for k2, v2 in coalesce(v1.mssql_databases, {}) : {
        for k3, v3 in coalesce(v2.mssql_job_agents, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          database_id = module.mssql_databases.mssql_databases_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  mssql_jobs = merge([
    for k1, v1 in var.mssql_servers : merge([
      for k2, v2 in coalesce(v1.mssql_databases, {}) : merge([
        for k3, v3 in coalesce(v2.mssql_job_agents, {}) : {
          for k4, v4 in coalesce(v3.mssql_jobs, {}) :
          "${k1}/${k2}/${k3}/${k4}" => merge(v4, {
            job_agent_id = module.mssql_job_agents.mssql_job_agents_id["${k1}/${k2}/${k3}"]
          })
        }
      ]...)
    ]...)
  ]...)

  mssql_job_credentials = merge([
    for k1, v1 in var.mssql_servers : merge([
      for k2, v2 in coalesce(v1.mssql_databases, {}) : merge([
        for k3, v3 in coalesce(v2.mssql_job_agents, {}) : {
          for k4, v4 in coalesce(v3.mssql_job_credentials, {}) :
          "${k1}/${k2}/${k3}/${k4}" => merge(v4, {
            job_agent_id = module.mssql_job_agents.mssql_job_agents_id["${k1}/${k2}/${k3}"]
          })
        }
      ]...)
    ]...)
  ]...)

  mssql_job_target_groups = merge([
    for k1, v1 in var.mssql_servers : merge([
      for k2, v2 in coalesce(v1.mssql_databases, {}) : merge([
        for k3, v3 in coalesce(v2.mssql_job_agents, {}) : {
          for k4, v4 in coalesce(v3.mssql_job_target_groups, {}) :
          "${k1}/${k2}/${k3}/${k4}" => merge(v4, {
            job_agent_id = module.mssql_job_agents.mssql_job_agents_id["${k1}/${k2}/${k3}"]
          })
        }
      ]...)
    ]...)
  ]...)

  mssql_job_schedules = merge([
    for k1, v1 in var.mssql_servers : merge([
      for k2, v2 in coalesce(v1.mssql_databases, {}) : merge([
        for k3, v3 in coalesce(v2.mssql_job_agents, {}) : merge([
          for k4, v4 in coalesce(v3.mssql_jobs, {}) : {
            for k5, v5 in coalesce(v4.mssql_job_schedules, {}) :
            "${k1}/${k2}/${k3}/${k4}/${k5}" => merge(v5, {
              job_id = module.mssql_jobs.mssql_jobs_id["${k1}/${k2}/${k3}/${k4}"]
            })
          }
        ]...)
      ]...)
    ]...)
  ]...)

  mssql_job_steps = merge([
    for k1, v1 in var.mssql_servers : merge([
      for k2, v2 in coalesce(v1.mssql_databases, {}) : merge([
        for k3, v3 in coalesce(v2.mssql_job_agents, {}) : merge([
          for k4, v4 in coalesce(v3.mssql_jobs, {}) : {
            for k5, v5 in coalesce(v4.mssql_job_steps, {}) :
            "${k1}/${k2}/${k3}/${k4}/${k5}" => merge(v5, {
              job_id              = module.mssql_jobs.mssql_jobs_id["${k1}/${k2}/${k3}/${k4}"]
              job_target_group_id = try(module.mssql_job_target_groups.mssql_job_target_groups_id["${k1}/${k2}/${k3}/${v5.job_target_group_id}"], v5.job_target_group_id)
            })
          }
        ]...)
      ]...)
    ]...)
  ]...)
}

module "mssql_servers" {
  source        = "git::https://github.com/AeternaModules/azurerm_mssql_server.git?ref=v5.0.0"
  mssql_servers = local.mssql_servers
}

module "mssql_databases" {
  source          = "git::https://github.com/AeternaModules/azurerm_mssql_database.git?ref=v5.0.0"
  mssql_databases = local.mssql_databases
  depends_on      = [module.mssql_servers]
}

module "mssql_failover_groups" {
  source                = "git::https://github.com/AeternaModules/azurerm_mssql_failover_group.git?ref=v5.0.0"
  mssql_failover_groups = local.mssql_failover_groups
  depends_on            = [module.mssql_servers]
}

module "mssql_firewall_rules" {
  source               = "git::https://github.com/AeternaModules/azurerm_mssql_firewall_rule.git?ref=v5.0.0"
  mssql_firewall_rules = local.mssql_firewall_rules
  depends_on           = [module.mssql_servers]
}

module "mssql_outbound_firewall_rules" {
  source                        = "git::https://github.com/AeternaModules/azurerm_mssql_outbound_firewall_rule.git?ref=v5.0.0"
  mssql_outbound_firewall_rules = local.mssql_outbound_firewall_rules
  depends_on                    = [module.mssql_servers]
}

module "mssql_server_dns_aliases" {
  source                   = "git::https://github.com/AeternaModules/azurerm_mssql_server_dns_alias.git?ref=v5.0.0"
  mssql_server_dns_aliases = local.mssql_server_dns_aliases
  depends_on               = [module.mssql_servers]
}

module "mssql_server_extended_auditing_policies" {
  source                                  = "git::https://github.com/AeternaModules/azurerm_mssql_server_extended_auditing_policy.git?ref=v5.0.0"
  mssql_server_extended_auditing_policies = local.mssql_server_extended_auditing_policies
  depends_on                              = [module.mssql_servers]
}

module "mssql_server_microsoft_support_auditing_policies" {
  source                                           = "git::https://github.com/AeternaModules/azurerm_mssql_server_microsoft_support_auditing_policy.git?ref=v5.0.0"
  mssql_server_microsoft_support_auditing_policies = local.mssql_server_microsoft_support_auditing_policies
  depends_on                                       = [module.mssql_servers]
}

module "mssql_server_transparent_data_encryptions" {
  source                                    = "git::https://github.com/AeternaModules/azurerm_mssql_server_transparent_data_encryption.git?ref=v5.0.0"
  mssql_server_transparent_data_encryptions = local.mssql_server_transparent_data_encryptions
  depends_on                                = [module.mssql_servers]
}

module "mssql_virtual_network_rules" {
  source                      = "git::https://github.com/AeternaModules/azurerm_mssql_virtual_network_rule.git?ref=v5.0.0"
  mssql_virtual_network_rules = local.mssql_virtual_network_rules
  depends_on                  = [module.mssql_servers]
}

module "mssql_database_extended_auditing_policies" {
  source                                    = "git::https://github.com/AeternaModules/azurerm_mssql_database_extended_auditing_policy.git?ref=v5.0.0"
  mssql_database_extended_auditing_policies = local.mssql_database_extended_auditing_policies
  depends_on                                = [module.mssql_databases]
}

module "mssql_job_agents" {
  source           = "git::https://github.com/AeternaModules/azurerm_mssql_job_agent.git?ref=v5.0.0"
  mssql_job_agents = local.mssql_job_agents
  depends_on       = [module.mssql_databases]
}

module "mssql_jobs" {
  source     = "git::https://github.com/AeternaModules/azurerm_mssql_job.git?ref=v5.0.0"
  mssql_jobs = local.mssql_jobs
  depends_on = [module.mssql_job_agents]
}

module "mssql_job_credentials" {
  source                = "git::https://github.com/AeternaModules/azurerm_mssql_job_credential.git?ref=v5.0.0"
  mssql_job_credentials = local.mssql_job_credentials
  depends_on            = [module.mssql_job_agents]
}

module "mssql_job_target_groups" {
  source                  = "git::https://github.com/AeternaModules/azurerm_mssql_job_target_group.git?ref=v5.0.0"
  mssql_job_target_groups = local.mssql_job_target_groups
  depends_on              = [module.mssql_job_agents]
}

module "mssql_job_schedules" {
  source              = "git::https://github.com/AeternaModules/azurerm_mssql_job_schedule.git?ref=v5.0.0"
  mssql_job_schedules = local.mssql_job_schedules
  depends_on          = [module.mssql_jobs]
}

module "mssql_job_steps" {
  source          = "git::https://github.com/AeternaModules/azurerm_mssql_job_step.git?ref=v5.0.0"
  mssql_job_steps = local.mssql_job_steps
  depends_on      = [module.mssql_jobs, module.mssql_job_target_groups]
}

