# InterServerClient::DomainWhoisPrivacyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **func** | **String** | Action to perform (enable or disableCancel). | [optional] |
| **csrf_token** | **String** | CSRF token if the API requires it for the account. | [optional] |
| **domain_firstname** | **String** |  | [optional] |
| **domain_lastname** | **String** |  | [optional] |
| **domain_email** | **String** |  | [optional] |
| **domain_address** | **String** |  | [optional] |
| **domain_address2** | **String** |  | [optional] |
| **domain_address3** | **String** |  | [optional] |
| **domain_city** | **String** |  | [optional] |
| **domain_state** | **String** |  | [optional] |
| **domain_zip** | **String** |  | [optional] |
| **domain_country** | **String** |  | [optional] |
| **domain_phone** | **String** |  | [optional] |
| **domain_fax** | **String** |  | [optional] |
| **domain_company** | **String** |  | [optional] |
| **domain_extra** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainWhoisPrivacyRequest.new(
  func: enable,
  csrf_token: null,
  domain_firstname: null,
  domain_lastname: null,
  domain_email: null,
  domain_address: null,
  domain_address2: null,
  domain_address3: null,
  domain_city: null,
  domain_state: null,
  domain_zip: null,
  domain_country: null,
  domain_phone: null,
  domain_fax: null,
  domain_company: null,
  domain_extra: null
)
```

