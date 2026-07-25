# InterServerClient::LicensesOrderServiceCategories509

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | Category ID | [optional] |
| **category_name** | **String** | Category Name | [optional] |
| **category_tag** | **String** | Category Tag | [optional] |
| **category_module** | **String** | Category Module | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicensesOrderServiceCategories509.new(
  category_id: 509,
  category_name: Webuzo,
  category_tag: webuzo,
  category_module: licenses
)
```

