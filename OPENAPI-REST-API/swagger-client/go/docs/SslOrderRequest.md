# SslOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ssl** | **int32** | SSL package service type id from getNewSsl.serviceTypes. | [default to null]
**Hostname** | **string** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | [default to null]
**ApproverEmail** | **string** | Domain-control approver email (required for all SSL orders). | [default to null]
**Frequency** | **int32** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**Coupon** | **string** | Coupon code. | [optional] 
**CsrType** | **string** | Whether the CSR is server-generated or customer-provided. | [optional] [default to CSR_TYPE.GENERATED]
**Csr** | **string** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] 
**Firstname** | **string** | Contact first name (defaults from account). | [optional] [default to null]
**Lastname** | **string** | Contact last name (defaults from account). | [optional] [default to null]
**Email** | **string** | Contact email (defaults from account). | [optional] [default to null]
**Address** | **string** | Contact address (defaults from account). | [optional] [default to null]
**City** | **string** | Contact city (defaults from account). | [optional] [default to null]
**State** | **string** | Contact state/region (defaults from account). | [optional] [default to null]
**Zip** | **string** | Contact postal code (defaults from account). | [optional] [default to null]
**Country** | **string** | Contact country (defaults from account). | [optional] [default to null]
**Phone** | **string** | Contact phone (defaults from account). | [optional] [default to null]
**Company** | **string** | Contact company/organization (defaults from account). | [optional] [default to null]
**Department** | **string** | Contact department (defaults to Administration). | [optional] [default to Administration]
**Agency** | **string** | EV certificate incorporating agency (only for EV packages). | [optional] [default to null]
**BusinessCategory** | **string** | EV certificate business category (only for EV packages). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

