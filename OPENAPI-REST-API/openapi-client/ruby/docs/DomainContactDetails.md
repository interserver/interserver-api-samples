# InterServerClient::DomainContactDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Contact status reported by the registrar. | [optional] |
| **state** | **String** | State or region for the contact address. | [optional] |
| **org_name** | **String** | Organization name for the contact. | [optional] |
| **country** | **String** | Two-letter country code for the contact. | [optional] |
| **postal_code** | **String** | Postal or ZIP code for the contact address. | [optional] |
| **email** | **String** | Email address for the contact. | [optional] |
| **fax** | **String** | Fax number for the contact, if available. | [optional] |
| **address2** | **String** | Secondary street address line. | [optional] |
| **address3** | **String** | Tertiary street address line. | [optional] |
| **address1** | **String** | Primary street address line. | [optional] |
| **city** | **String** | City for the contact address. | [optional] |
| **phone** | **String** | Phone number for the contact. | [optional] |
| **first_name** | **String** | First name for the contact. | [optional] |
| **last_name** | **String** | Last name for the contact. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainContactDetails.new(
  status: null,
  state: null,
  org_name: null,
  country: null,
  postal_code: null,
  email: null,
  fax: null,
  address2: null,
  address3: null,
  address1: null,
  city: null,
  phone: null,
  first_name: null,
  last_name: null
)
```

