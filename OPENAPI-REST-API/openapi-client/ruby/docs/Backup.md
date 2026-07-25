# InterServerClient::Backup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_info** | [**BackupServiceInfo**](BackupServiceInfo.md) |  | [optional] |
| **client_links** | [**Array&lt;BackupClientLink&gt;**](BackupClientLink.md) |  | [optional] |
| **billing_details** | [**BackupBillingDetails**](BackupBillingDetails.md) |  | [optional] |
| **cust_currency** | **String** | Customer&#39;s currency. | [optional] |
| **cust_currency_symbol** | **String** | Customer&#39;s currency symbol. | [optional] |
| **service_master** | [**BackupServiceMaster**](BackupServiceMaster.md) |  | [optional] |
| **package** | **String** | Package information. | [optional] |
| **service_extra** | **String** |  | [optional] |
| **extra_info_tables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Backup.new(
  service_info: null,
  client_links: null,
  billing_details: null,
  cust_currency: USD,
  cust_currency_symbol: $,
  service_master: null,
  package: null,
  service_extra: null,
  extra_info_tables: null
)
```

