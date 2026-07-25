# InterServerClient::DomainBillingExtra

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**DomainOrderResponse**](DomainOrderResponse.md) |  | [optional] |
| **order_id** | **String** |  | [optional] |
| **domain_id** | **String** |  | [optional] |
| **prov_process_pending** | [**DomainProvProcessPending**](DomainProvProcessPending.md) |  | [optional] |
| **email** | **String** |  | [optional] |
| **firstname** | **String** |  | [optional] |
| **lastname** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **address3** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **fax** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainBillingExtra.new(
  order: null,
  order_id: null,
  domain_id: null,
  prov_process_pending: null,
  email: null,
  firstname: null,
  lastname: null,
  company: null,
  address: null,
  address2: null,
  address3: null,
  city: null,
  state: null,
  zip: null,
  country: null,
  phone: null,
  fax: null
)
```

