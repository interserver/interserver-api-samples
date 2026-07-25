# InterServerClient::DnsUpdateRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **type** | [**DnsRecordType**](DnsRecordType.md) |  | [optional] |
| **content** | **String** |  | [optional] |
| **ttl** | **String** |  | [optional] |
| **prio** | **String** |  | [optional] |
| **disabled** | **String** |  | [optional] |
| **ordername** | **String** |  | [optional] |
| **auth** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DnsUpdateRecord.new(
  name: null,
  type: null,
  content: null,
  ttl: null,
  prio: null,
  disabled: null,
  ordername: null,
  auth: null
)
```

