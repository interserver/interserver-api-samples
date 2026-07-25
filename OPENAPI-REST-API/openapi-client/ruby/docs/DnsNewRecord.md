# InterServerClient::DnsNewRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name part of record |  |
| **type** | [**DnsRecordType**](DnsRecordType.md) |  |  |
| **content** | **String** | Content of record |  |
| **ttl** | **Integer** | Time-to-live | [optional][default to 86400] |
| **prio** | **Integer** | Priority | [optional][default to 0] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DnsNewRecord.new(
  name: myfamily.com,
  type: null,
  content: 127.0.0.1,
  ttl: 86400,
  prio: 0
)
```

