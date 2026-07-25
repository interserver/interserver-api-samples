# InterServerClient::DomainSearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Indicates whether the registrar search succeeded. | [optional] |
| **response_text** | **String** | Human-readable status text from the registrar. | [optional] |
| **response_time** | **String** | Response time as reported by the registrar. | [optional] |
| **lookup** | **Array&lt;Object&gt;** | Availability lookup results for queried domains. | [optional] |
| **suggest** | **Array&lt;Object&gt;** | Suggested alternative domains and availability data. | [optional] |
| **tlds** | **Array&lt;String&gt;** | TLDs evaluated during the search. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainSearchResponse.new(
  success: null,
  response_text: null,
  response_time: null,
  lookup: null,
  suggest: null,
  tlds: null
)
```

