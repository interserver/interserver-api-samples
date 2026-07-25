# InterServerClient::DnsRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the DNS Record. |  |
| **domain_id** | **String** | The ID of the Domain this is a record of. |  |
| **name** | **String** |  |  |
| **type** | [**DnsRecordType**](DnsRecordType.md) |  |  |
| **content** | **String** | The content of the record, such as the IP address or hsotname. |  |
| **ttl** | **String** | Time To Live (seconds) |  |
| **prio** | **String** | Priority |  |
| **disabled** | **String** |  |  |
| **ordername** | **String** | Alternate name to use for sorting |  |
| **auth** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DnsRecord.new(
  id: 472,
  domain_id: 68,
  name: hussfamily.com,
  type: null,
  content: cdns1.interserver.net,
  ttl: 86400,
  prio: 0,
  disabled: 0,
  ordername: null,
  auth: 1
)
```

