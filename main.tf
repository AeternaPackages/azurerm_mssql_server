locals {
  mssql_servers = { for k1, v1 in var.mssql_servers : k1 => { administrator_login = v1.administrator_login, administrator_login_password = v1.administrator_login_password, administrator_login_password_key_vault_id = v1.administrator_login_password_key_vault_id, administrator_login_password_key_vault_secret_name = v1.administrator_login_password_key_vault_secret_name, administrator_login_password_wo = v1.administrator_login_password_wo, administrator_login_password_wo_key_vault_id = v1.administrator_login_password_wo_key_vault_id, administrator_login_password_wo_key_vault_secret_name = v1.administrator_login_password_wo_key_vault_secret_name, administrator_login_password_wo_version = v1.administrator_login_password_wo_version, azuread_administrator = v1.azuread_administrator, connection_policy = v1.connection_policy, express_vulnerability_assessment_enabled = v1.express_vulnerability_assessment_enabled, identity = v1.identity, location = v1.location, minimum_tls_version = v1.minimum_tls_version, name = v1.name, outbound_network_restriction_enabled = v1.outbound_network_restriction_enabled, primary_user_assigned_identity_id = v1.primary_user_assigned_identity_id, public_network_access_enabled = v1.public_network_access_enabled, resource_group_name = v1.resource_group_name, tags = v1.tags, transparent_data_encryption_key_vault_key_id = v1.transparent_data_encryption_key_vault_key_id, version = v1.version } }

  mssql_server_dns_aliases = merge([
    for k1, v1 in var.mssql_servers : {
      for k2, v2 in coalesce(v1.mssql_server_dns_aliases, {}) :
      "${k1}/${k2}" => merge(v2, {
        mssql_server_id = module.mssql_servers.mssql_servers_id["${k1}"]
      })
    }
  ]...)
}

module "mssql_servers" {
  source        = "git::https://github.com/AeternaModules/azurerm_mssql_server.git?ref=v4.80.0"
  mssql_servers = local.mssql_servers
}

module "mssql_server_dns_aliases" {
  source                   = "git::https://github.com/AeternaModules/azurerm_mssql_server_dns_alias.git?ref=v4.80.0"
  mssql_server_dns_aliases = local.mssql_server_dns_aliases
  depends_on               = [module.mssql_servers]
}

