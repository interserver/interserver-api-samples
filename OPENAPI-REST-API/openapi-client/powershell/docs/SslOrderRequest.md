# SslOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ssl** | **Int32** | SSL package service type id from getNewSsl.serviceTypes. | 
**Hostname** | **String** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**ApproverEmail** | **String** | Domain-control approver email (required for all SSL orders). | 
**Frequency** | **Int32** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**Coupon** | **String** | Coupon code. | [optional] [default to ""]
**CsrType** | **String** | Whether the CSR is server-generated or customer-provided. | [optional] [default to "generated"]
**Csr** | **String** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to ""]
**Firstname** | **String** | Contact first name (defaults from account). | [optional] 
**Lastname** | **String** | Contact last name (defaults from account). | [optional] 
**Email** | **String** | Contact email (defaults from account). | [optional] 
**Address** | **String** | Contact address (defaults from account). | [optional] 
**City** | **String** | Contact city (defaults from account). | [optional] 
**State** | **String** | Contact state/region (defaults from account). | [optional] 
**Zip** | **String** | Contact postal code (defaults from account). | [optional] 
**Country** | **String** | Contact country (defaults from account). | [optional] 
**Phone** | **String** | Contact phone (defaults from account). | [optional] 
**Company** | **String** | Contact company/organization (defaults from account). | [optional] 
**Department** | **String** | Contact department (defaults to Administration). | [optional] [default to "Administration"]
**Agency** | **String** | EV certificate incorporating agency (only for EV packages). | [optional] 
**BusinessCategory** | **String** | EV certificate business category (only for EV packages). | [optional] 

## Examples

- Prepare the resource
```powershell
$SslOrderRequest = Initialize-InterserverApiSslOrderRequest  -Ssl null `
 -Hostname null `
 -ApproverEmail null `
 -Frequency null `
 -Coupon null `
 -CsrType null `
 -Csr null `
 -Firstname null `
 -Lastname null `
 -Email null `
 -Address null `
 -City null `
 -State null `
 -Zip null `
 -Country null `
 -Phone null `
 -Company null `
 -Department null `
 -Agency null `
 -BusinessCategory null
```

- Convert the resource to JSON
```powershell
$SslOrderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

