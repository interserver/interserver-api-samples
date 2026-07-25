# InterServerClient::ServerOrderPostRequestHd

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'inter_server_client'

InterServerClient::ServerOrderPostRequestHd.openapi_one_of
# =>
# [
#   :'Array<Integer>',
#   :'Integer'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'inter_server_client'

InterServerClient::ServerOrderPostRequestHd.build(data)
# => #<Array<Integer>:0x00007fdd4aab02a0>

InterServerClient::ServerOrderPostRequestHd.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<Integer>`
- `Integer`
- `nil` (if no type matches)

