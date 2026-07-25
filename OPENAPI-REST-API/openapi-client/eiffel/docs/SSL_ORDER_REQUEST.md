# SSL_ORDER_REQUEST

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **INTEGER_32** | SSL package service type id from getNewSsl.serviceTypes. | [default to null]
**hostname** | [**STRING_32**](STRING_32.md) | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | [default to null]
**approver_email** | [**STRING_32**](STRING_32.md) | Domain-control approver email (required for all SSL orders). | [default to null]
**frequency** | **INTEGER_32** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**coupon** | [**STRING_32**](STRING_32.md) | Coupon code. | [optional] [default to ]
**csr_type** | [**STRING_32**](STRING_32.md) | Whether the CSR is server-generated or customer-provided. | [optional] [default to generated]
**csr** | [**STRING_32**](STRING_32.md) | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to ]
**firstname** | [**STRING_32**](STRING_32.md) | Contact first name (defaults from account). | [optional] [default to null]
**lastname** | [**STRING_32**](STRING_32.md) | Contact last name (defaults from account). | [optional] [default to null]
**email** | [**STRING_32**](STRING_32.md) | Contact email (defaults from account). | [optional] [default to null]
**address** | [**STRING_32**](STRING_32.md) | Contact address (defaults from account). | [optional] [default to null]
**city** | [**STRING_32**](STRING_32.md) | Contact city (defaults from account). | [optional] [default to null]
**state** | [**STRING_32**](STRING_32.md) | Contact state/region (defaults from account). | [optional] [default to null]
**zip** | [**STRING_32**](STRING_32.md) | Contact postal code (defaults from account). | [optional] [default to null]
**country** | [**STRING_32**](STRING_32.md) | Contact country (defaults from account). | [optional] [default to null]
**phone** | [**STRING_32**](STRING_32.md) | Contact phone (defaults from account). | [optional] [default to null]
**company** | [**STRING_32**](STRING_32.md) | Contact company/organization (defaults from account). | [optional] [default to null]
**department** | [**STRING_32**](STRING_32.md) | Contact department (defaults to Administration). | [optional] [default to Administration]
**agency** | [**STRING_32**](STRING_32.md) | EV certificate incorporating agency (only for EV packages). | [optional] [default to null]
**business_category** | [**STRING_32**](STRING_32.md) | EV certificate business category (only for EV packages). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


