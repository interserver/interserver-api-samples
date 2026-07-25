# ssl_order_request_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **int** | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | **char \*** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approver_email** | **char \*** | Domain-control approver email (required for all SSL orders). | 
**frequency** | **int** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**coupon** | **char \*** | Coupon code. | [optional] [default to '']
**csr_type** | **interserver_management_api_ssl_order_request_CSRTYPE_e** | Whether the CSR is server-generated or customer-provided. | [optional] [default to 'generated']
**csr** | **char \*** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to '']
**firstname** | **char \*** | Contact first name (defaults from account). | [optional] 
**lastname** | **char \*** | Contact last name (defaults from account). | [optional] 
**email** | **char \*** | Contact email (defaults from account). | [optional] 
**address** | **char \*** | Contact address (defaults from account). | [optional] 
**city** | **char \*** | Contact city (defaults from account). | [optional] 
**state** | **char \*** | Contact state/region (defaults from account). | [optional] 
**zip** | **char \*** | Contact postal code (defaults from account). | [optional] 
**country** | **char \*** | Contact country (defaults from account). | [optional] 
**phone** | **char \*** | Contact phone (defaults from account). | [optional] 
**company** | **char \*** | Contact company/organization (defaults from account). | [optional] 
**department** | **char \*** | Contact department (defaults to Administration). | [optional] [default to 'Administration']
**agency** | **char \*** | EV certificate incorporating agency (only for EV packages). | [optional] 
**business_category** | **char \*** | EV certificate business category (only for EV packages). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


