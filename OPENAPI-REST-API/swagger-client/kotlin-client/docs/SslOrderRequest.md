# SslOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | [**kotlin.Int**](.md) | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | [**kotlin.String**](.md) | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approverEmail** | [**kotlin.String**](.md) | Domain-control approver email (required for all SSL orders). | 
**frequency** | [**kotlin.Int**](.md) | Billing frequency in months (12, 24, or 36). |  [optional]
**coupon** | [**kotlin.String**](.md) | Coupon code. |  [optional]
**csrType** | [**inline**](#CsrType) | Whether the CSR is server-generated or customer-provided. |  [optional]
**csr** | [**kotlin.String**](.md) | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. |  [optional]
**firstname** | [**kotlin.String**](.md) | Contact first name (defaults from account). |  [optional]
**lastname** | [**kotlin.String**](.md) | Contact last name (defaults from account). |  [optional]
**email** | [**kotlin.String**](.md) | Contact email (defaults from account). |  [optional]
**address** | [**kotlin.String**](.md) | Contact address (defaults from account). |  [optional]
**city** | [**kotlin.String**](.md) | Contact city (defaults from account). |  [optional]
**state** | [**kotlin.String**](.md) | Contact state/region (defaults from account). |  [optional]
**zip** | [**kotlin.String**](.md) | Contact postal code (defaults from account). |  [optional]
**country** | [**kotlin.String**](.md) | Contact country (defaults from account). |  [optional]
**phone** | [**kotlin.String**](.md) | Contact phone (defaults from account). |  [optional]
**company** | [**kotlin.String**](.md) | Contact company/organization (defaults from account). |  [optional]
**department** | [**kotlin.String**](.md) | Contact department (defaults to Administration). |  [optional]
**agency** | [**kotlin.String**](.md) | EV certificate incorporating agency (only for EV packages). |  [optional]
**businessCategory** | [**kotlin.String**](.md) | EV certificate business category (only for EV packages). |  [optional]

<a name="CsrType"></a>
## Enum: csr_type
Name | Value
---- | -----
csrType | generated, provided
