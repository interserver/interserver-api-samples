# SslOrderRequest

Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **number** | SSL package service type id from getNewSsl.serviceTypes. | [default to undefined]
**hostname** | **string** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | [default to undefined]
**approver_email** | **string** | Domain-control approver email (required for all SSL orders). | [default to undefined]
**frequency** | **number** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**coupon** | **string** | Coupon code. | [optional] [default to '']
**csr_type** | **string** | Whether the CSR is server-generated or customer-provided. | [optional] [default to CsrTypeEnum_Generated]
**csr** | **string** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to '']
**firstname** | **string** | Contact first name (defaults from account). | [optional] [default to undefined]
**lastname** | **string** | Contact last name (defaults from account). | [optional] [default to undefined]
**email** | **string** | Contact email (defaults from account). | [optional] [default to undefined]
**address** | **string** | Contact address (defaults from account). | [optional] [default to undefined]
**city** | **string** | Contact city (defaults from account). | [optional] [default to undefined]
**state** | **string** | Contact state/region (defaults from account). | [optional] [default to undefined]
**zip** | **string** | Contact postal code (defaults from account). | [optional] [default to undefined]
**country** | **string** | Contact country (defaults from account). | [optional] [default to undefined]
**phone** | **string** | Contact phone (defaults from account). | [optional] [default to undefined]
**company** | **string** | Contact company/organization (defaults from account). | [optional] [default to undefined]
**department** | **string** | Contact department (defaults to Administration). | [optional] [default to 'Administration']
**agency** | **string** | EV certificate incorporating agency (only for EV packages). | [optional] [default to undefined]
**business_category** | **string** | EV certificate business category (only for EV packages). | [optional] [default to undefined]

## Example

```typescript
import { SslOrderRequest } from '@interserver/myadmin-client';

const instance: SslOrderRequest = {
    ssl,
    hostname,
    approver_email,
    frequency,
    coupon,
    csr_type,
    csr,
    firstname,
    lastname,
    email,
    address,
    city,
    state,
    zip,
    country,
    phone,
    company,
    department,
    agency,
    business_category,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
