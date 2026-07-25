# InterServerClient::DomainAllInfoAttributesContactSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | [**DomainOwnerContact**](DomainOwnerContact.md) |  | [optional] |
| **admin** | [**DomainAdminContact**](DomainAdminContact.md) |  | [optional] |
| **tech** | [**DomainTechContact**](DomainTechContact.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainAllInfoAttributesContactSet.new(
  owner: null,
  admin: null,
  tech: null
)
```

