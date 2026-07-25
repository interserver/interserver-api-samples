# SslOrderRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **ssl** | **Integer** | SSL package service type id from getNewSsl.serviceTypes. | [default to null] |
| **hostname** | **String** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | [default to null] |
| **approver\_email** | **String** | Domain-control approver email (required for all SSL orders). | [default to null] |
| **frequency** | **Integer** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12] |
| **coupon** | **String** | Coupon code. | [optional] [default to ] |
| **csr\_type** | **String** | Whether the CSR is server-generated or customer-provided. | [optional] [default to generated] |
| **csr** | **String** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to ] |
| **firstname** | **String** | Contact first name (defaults from account). | [optional] [default to null] |
| **lastname** | **String** | Contact last name (defaults from account). | [optional] [default to null] |
| **email** | **String** | Contact email (defaults from account). | [optional] [default to null] |
| **address** | **String** | Contact address (defaults from account). | [optional] [default to null] |
| **city** | **String** | Contact city (defaults from account). | [optional] [default to null] |
| **state** | **String** | Contact state/region (defaults from account). | [optional] [default to null] |
| **zip** | **String** | Contact postal code (defaults from account). | [optional] [default to null] |
| **country** | **String** | Contact country (defaults from account). | [optional] [default to null] |
| **phone** | **String** | Contact phone (defaults from account). | [optional] [default to null] |
| **company** | **String** | Contact company/organization (defaults from account). | [optional] [default to null] |
| **department** | **String** | Contact department (defaults to Administration). | [optional] [default to Administration] |
| **agency** | **String** | EV certificate incorporating agency (only for EV packages). | [optional] [default to null] |
| **business\_category** | **String** | EV certificate business category (only for EV packages). | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

