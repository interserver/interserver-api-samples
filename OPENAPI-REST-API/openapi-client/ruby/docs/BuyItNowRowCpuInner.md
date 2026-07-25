# InterServerClient::BuyItNowRowCpuInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'inter_server_client'

InterServerClient::BuyItNowRowCpuInner.openapi_one_of
# =>
# [
#   :'BuyItNowRowCpuInnerOneOf',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'inter_server_client'

InterServerClient::BuyItNowRowCpuInner.build(data)
# => #<BuyItNowRowCpuInnerOneOf:0x00007fdd4aab02a0>

InterServerClient::BuyItNowRowCpuInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BuyItNowRowCpuInnerOneOf`
- `String`
- `nil` (if no type matches)

