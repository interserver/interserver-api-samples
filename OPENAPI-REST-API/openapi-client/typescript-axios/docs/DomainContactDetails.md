# DomainContactDetails

Contact details used for domain registrant/admin/technical/billing records.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | Contact status reported by the registrar. | [optional] [default to undefined]
**state** | **string** | State or region for the contact address. | [optional] [default to undefined]
**org_name** | **string** | Organization name for the contact. | [optional] [default to undefined]
**country** | **string** | Two-letter country code for the contact. | [optional] [default to undefined]
**postal_code** | **string** | Postal or ZIP code for the contact address. | [optional] [default to undefined]
**email** | **string** | Email address for the contact. | [optional] [default to undefined]
**fax** | **string** | Fax number for the contact, if available. | [optional] [default to undefined]
**address2** | **string** | Secondary street address line. | [optional] [default to undefined]
**address3** | **string** | Tertiary street address line. | [optional] [default to undefined]
**address1** | **string** | Primary street address line. | [optional] [default to undefined]
**city** | **string** | City for the contact address. | [optional] [default to undefined]
**phone** | **string** | Phone number for the contact. | [optional] [default to undefined]
**first_name** | **string** | First name for the contact. | [optional] [default to undefined]
**last_name** | **string** | Last name for the contact. | [optional] [default to undefined]

## Example

```typescript
import { DomainContactDetails } from '@interserver/myadmin-client';

const instance: DomainContactDetails = {
    status,
    state,
    org_name,
    country,
    postal_code,
    email,
    fax,
    address2,
    address3,
    address1,
    city,
    phone,
    first_name,
    last_name,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
