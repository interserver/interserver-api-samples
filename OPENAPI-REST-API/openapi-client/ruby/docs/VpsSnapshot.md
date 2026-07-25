# InterServerClient::VpsSnapshot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Snapshot name. | [optional] |
| **used** | **Integer** | Disk space used by this snapshot in bytes. | [optional] |
| **date** | **Integer** | Unix timestamp of when the snapshot was created. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsSnapshot.new(
  name: null,
  used: null,
  date: null
)
```

