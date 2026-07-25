# InterServerClient::DomainDnssecRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **algorithm** | **Array&lt;Integer&gt;** | List of DNSSEC algorithm IDs for each record. | [optional] |
| **digest_type** | **Array&lt;Integer&gt;** | List of digest type IDs for each record. | [optional] |
| **digest** | **Array&lt;String&gt;** | List of hex digests for each record. | [optional] |
| **key_tag** | **Array&lt;Integer&gt;** | List of key tag values corresponding to each record. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainDnssecRequest.new(
  algorithm: null,
  digest_type: null,
  digest: null,
  key_tag: null
)
```

