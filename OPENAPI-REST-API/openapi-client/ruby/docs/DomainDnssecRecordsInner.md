# InterServerClient::DomainDnssecRecordsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **algorithm** | **String** |  | [optional] |
| **digest_type** | **String** |  | [optional] |
| **digest** | **String** |  | [optional] |
| **key_tag** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainDnssecRecordsInner.new(
  algorithm: null,
  digest_type: null,
  digest: null,
  key_tag: null
)
```

