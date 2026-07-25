# DomainWhoisPrivacyRequest

Request payload for enabling or disabling Whois privacy.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**func** | **string** | Action to perform (enable or disableCancel). | [optional] [default to undefined]
**csrf_token** | **string** | CSRF token if the API requires it for the account. | [optional] [default to undefined]
**domain_firstname** | **string** |  | [optional] [default to undefined]
**domain_lastname** | **string** |  | [optional] [default to undefined]
**domain_email** | **string** |  | [optional] [default to undefined]
**domain_address** | **string** |  | [optional] [default to undefined]
**domain_address2** | **string** |  | [optional] [default to undefined]
**domain_address3** | **string** |  | [optional] [default to undefined]
**domain_city** | **string** |  | [optional] [default to undefined]
**domain_state** | **string** |  | [optional] [default to undefined]
**domain_zip** | **string** |  | [optional] [default to undefined]
**domain_country** | **string** |  | [optional] [default to undefined]
**domain_phone** | **string** |  | [optional] [default to undefined]
**domain_fax** | **string** |  | [optional] [default to undefined]
**domain_company** | **string** |  | [optional] [default to undefined]
**domain_extra** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { DomainWhoisPrivacyRequest } from '@interserver/myadmin-client';

const instance: DomainWhoisPrivacyRequest = {
    func,
    csrf_token,
    domain_firstname,
    domain_lastname,
    domain_email,
    domain_address,
    domain_address2,
    domain_address3,
    domain_city,
    domain_state,
    domain_zip,
    domain_country,
    domain_phone,
    domain_fax,
    domain_company,
    domain_extra,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
