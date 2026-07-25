# InterServerClient::HomeServices

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domains** | [**HomeServicesDomains**](HomeServicesDomains.md) |  | [optional] |
| **webhosting** | [**HomeServicesWebhosting**](HomeServicesWebhosting.md) |  | [optional] |
| **vps** | [**HomeServicesVps**](HomeServicesVps.md) |  | [optional] |
| **licenses** | [**HomeServicesLicenses**](HomeServicesLicenses.md) |  | [optional] |
| **servers** | [**HomeServicesServers**](HomeServicesServers.md) |  | [optional] |
| **backups** | [**HomeServicesBackups**](HomeServicesBackups.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeServices.new(
  domains: null,
  webhosting: null,
  vps: null,
  licenses: null,
  servers: null,
  backups: null
)
```

