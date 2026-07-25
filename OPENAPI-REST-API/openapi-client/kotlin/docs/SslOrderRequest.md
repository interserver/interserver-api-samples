
# SslOrderRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ssl** | **kotlin.Int** | SSL package service type id from getNewSsl.serviceTypes. |  |
| **hostname** | **kotlin.String** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. |  |
| **approverEmail** | **kotlin.String** | Domain-control approver email (required for all SSL orders). |  |
| **frequency** | **kotlin.Int** | Billing frequency in months (12, 24, or 36). |  [optional] |
| **coupon** | **kotlin.String** | Coupon code. |  [optional] |
| **csrType** | [**inline**](#CsrType) | Whether the CSR is server-generated or customer-provided. |  [optional] |
| **csr** | **kotlin.String** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. |  [optional] |
| **firstname** | **kotlin.String** | Contact first name (defaults from account). |  [optional] |
| **lastname** | **kotlin.String** | Contact last name (defaults from account). |  [optional] |
| **email** | **kotlin.String** | Contact email (defaults from account). |  [optional] |
| **address** | **kotlin.String** | Contact address (defaults from account). |  [optional] |
| **city** | **kotlin.String** | Contact city (defaults from account). |  [optional] |
| **state** | **kotlin.String** | Contact state/region (defaults from account). |  [optional] |
| **zip** | **kotlin.String** | Contact postal code (defaults from account). |  [optional] |
| **country** | **kotlin.String** | Contact country (defaults from account). |  [optional] |
| **phone** | **kotlin.String** | Contact phone (defaults from account). |  [optional] |
| **company** | **kotlin.String** | Contact company/organization (defaults from account). |  [optional] |
| **department** | **kotlin.String** | Contact department (defaults to Administration). |  [optional] |
| **agency** | **kotlin.String** | EV certificate incorporating agency (only for EV packages). |  [optional] |
| **businessCategory** | **kotlin.String** | EV certificate business category (only for EV packages). |  [optional] |


<a id="CsrType"></a>
## Enum: csr_type
| Name | Value |
| ---- | ----- |
| csrType | generated, provided |



