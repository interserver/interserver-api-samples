# IO.Swagger.Model.SslOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ssl** | **int?** | SSL package service type id from getNewSsl.serviceTypes. | 
**Hostname** | **string** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**ApproverEmail** | **string** | Domain-control approver email (required for all SSL orders). | 
**Frequency** | **int?** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**Coupon** | **string** | Coupon code. | [optional] [default to ""]
**CsrType** | **string** | Whether the CSR is server-generated or customer-provided. | [optional] [default to CsrTypeEnum.GeneratedEnum]
**Csr** | **string** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to ""]
**Firstname** | **string** | Contact first name (defaults from account). | [optional] 
**Lastname** | **string** | Contact last name (defaults from account). | [optional] 
**Email** | **string** | Contact email (defaults from account). | [optional] 
**Address** | **string** | Contact address (defaults from account). | [optional] 
**City** | **string** | Contact city (defaults from account). | [optional] 
**State** | **string** | Contact state/region (defaults from account). | [optional] 
**Zip** | **string** | Contact postal code (defaults from account). | [optional] 
**Country** | **string** | Contact country (defaults from account). | [optional] 
**Phone** | **string** | Contact phone (defaults from account). | [optional] 
**Company** | **string** | Contact company/organization (defaults from account). | [optional] 
**Department** | **string** | Contact department (defaults to Administration). | [optional] [default to "Administration"]
**Agency** | **string** | EV certificate incorporating agency (only for EV packages). | [optional] 
**BusinessCategory** | **string** | EV certificate business category (only for EV packages). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

