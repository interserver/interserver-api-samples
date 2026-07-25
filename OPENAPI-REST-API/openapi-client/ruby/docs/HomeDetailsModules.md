# InterServerClient::HomeDetailsModules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domains** | [**HomeDetailsModulesDomains**](HomeDetailsModulesDomains.md) |  | [optional] |
| **webhosting** | [**HomeDetailsModulesWebhosting**](HomeDetailsModulesWebhosting.md) |  | [optional] |
| **vps** | [**HomeDetailsModulesVps**](HomeDetailsModulesVps.md) |  | [optional] |
| **licenses** | [**HomeDetailsModulesLicenses**](HomeDetailsModulesLicenses.md) |  | [optional] |
| **backups** | [**HomeDetailsModulesBackups**](HomeDetailsModulesBackups.md) |  | [optional] |
| **servers** | [**HomeDetailsModulesServers**](HomeDetailsModulesServers.md) |  | [optional] |
| **quickservers** | [**HomeDetailsModulesQuickservers**](HomeDetailsModulesQuickservers.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeDetailsModules.new(
  domains: null,
  webhosting: null,
  vps: null,
  licenses: null,
  backups: null,
  servers: null,
  quickservers: null
)
```

