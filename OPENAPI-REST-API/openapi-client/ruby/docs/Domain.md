# InterServerClient::Domain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_info** | [**DomainServiceInfo**](DomainServiceInfo.md) |  | [optional] |
| **service_types** | [**Hash&lt;String, DomainServiceType&gt;**](DomainServiceType.md) |  | [optional] |
| **client_links** | [**Array&lt;DomainClientLink&gt;**](DomainClientLink.md) |  | [optional] |
| **billing_details** | [**DomainBillingDetails**](DomainBillingDetails.md) |  | [optional] |
| **cust_currency** | **String** |  | [optional] |
| **cust_currency_symbol** | **String** |  | [optional] |
| **service_extra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] |
| **extra_info_tables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] |
| **service_type** | [**DomainServiceType**](DomainServiceType.md) |  | [optional] |
| **contact_details** | [**DomainContactDetails**](DomainContactDetails.md) |  | [optional] |
| **pwarning** | **String** |  | [optional] |
| **transfer_info** | **String** |  | [optional] |
| **errors** | **Boolean** |  | [optional] |
| **domain_logs** | **Array&lt;String&gt;** |  | [optional] |
| **all_info** | [**DomainAllInfo**](DomainAllInfo.md) |  | [optional] |
| **registrar_status** | **String** |  | [optional] |
| **locked** | **String** |  | [optional] |
| **whois_privacy** | **String** |  | [optional] |
| **auto_renew** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Domain.new(
  service_info: null,
  service_types: null,
  client_links: null,
  billing_details: null,
  cust_currency: null,
  cust_currency_symbol: null,
  service_extra: null,
  extra_info_tables: null,
  service_type: null,
  contact_details: null,
  pwarning: null,
  transfer_info: null,
  errors: null,
  domain_logs: null,
  all_info: null,
  registrar_status: null,
  locked: null,
  whois_privacy: null,
  auto_renew: null
)
```

