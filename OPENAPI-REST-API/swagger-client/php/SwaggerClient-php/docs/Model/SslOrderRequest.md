# SslOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **int** | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | **string** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approver_email** | **string** | Domain-control approver email (required for all SSL orders). | 
**frequency** | **int** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**coupon** | **string** | Coupon code. | [optional] [default to '']
**csr_type** | **string** | Whether the CSR is server-generated or customer-provided. | [optional] [default to 'generated']
**csr** | **string** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to '']
**firstname** | **string** | Contact first name (defaults from account). | [optional] 
**lastname** | **string** | Contact last name (defaults from account). | [optional] 
**email** | **string** | Contact email (defaults from account). | [optional] 
**address** | **string** | Contact address (defaults from account). | [optional] 
**city** | **string** | Contact city (defaults from account). | [optional] 
**state** | **string** | Contact state/region (defaults from account). | [optional] 
**zip** | **string** | Contact postal code (defaults from account). | [optional] 
**country** | **string** | Contact country (defaults from account). | [optional] 
**phone** | **string** | Contact phone (defaults from account). | [optional] 
**company** | **string** | Contact company/organization (defaults from account). | [optional] 
**department** | **string** | Contact department (defaults to Administration). | [optional] [default to 'Administration']
**agency** | **string** | EV certificate incorporating agency (only for EV packages). | [optional] 
**business_category** | **string** | EV certificate business category (only for EV packages). | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

