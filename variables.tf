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
Nested mssql_server_dns_aliases (azurerm_mssql_server_dns_alias):
    Required:
        - name
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
    mssql_server_dns_aliases = optional(map(object({
      name = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.mssql_servers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.mssql_servers : [for kk in keys(coalesce(v0.mssql_server_dns_aliases, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
