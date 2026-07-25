# InterServerClient::BackupOrderPostResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **continue** | **Boolean** |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |
| **total_cost** | **String** |  | [optional] |
| **iid** | **String** |  | [optional] |
| **iids** | **Array&lt;String&gt;** |  | [optional] |
| **real_iids** | **Array&lt;String&gt;** |  | [optional] |
| **service_id** | **Integer** |  | [optional] |
| **invoice_description** | **String** |  | [optional] |
| **cj_params** | [**BackupOrderPostResponseCjParams**](BackupOrderPostResponseCjParams.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupOrderPostResponse.new(
  continue: null,
  errors: null,
  total_cost: null,
  iid: null,
  iids: null,
  real_iids: null,
  service_id: null,
  invoice_description: null,
  cj_params: null
)
```

