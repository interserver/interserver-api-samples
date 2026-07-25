

# SslOrderRequest

Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.

The class is defined in **[SslOrderRequest.java](../../src/main/java/org/openapitools/model/SslOrderRequest.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | `Integer` | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | `String` | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approverEmail** | `String` | Domain-control approver email (required for all SSL orders). | 
**frequency** | `Integer` | Billing frequency in months (12, 24, or 36). |  [optional property]
**coupon** | `String` | Coupon code. |  [optional property]
**csrType** | [**CsrTypeEnum**](#CsrTypeEnum) | Whether the CSR is server-generated or customer-provided. |  [optional property]
**csr** | `String` | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. |  [optional property]
**firstname** | `String` | Contact first name (defaults from account). |  [optional property]
**lastname** | `String` | Contact last name (defaults from account). |  [optional property]
**email** | `String` | Contact email (defaults from account). |  [optional property]
**address** | `String` | Contact address (defaults from account). |  [optional property]
**city** | `String` | Contact city (defaults from account). |  [optional property]
**state** | `String` | Contact state/region (defaults from account). |  [optional property]
**zip** | `String` | Contact postal code (defaults from account). |  [optional property]
**country** | `String` | Contact country (defaults from account). |  [optional property]
**phone** | `String` | Contact phone (defaults from account). |  [optional property]
**company** | `String` | Contact company/organization (defaults from account). |  [optional property]
**department** | `String` | Contact department (defaults to Administration). |  [optional property]
**agency** | `String` | EV certificate incorporating agency (only for EV packages). |  [optional property]
**businessCategory** | `String` | EV certificate business category (only for EV packages). |  [optional property]






## CsrTypeEnum

Name | Value
---- | -----
GENERATED | `"generated"`
PROVIDED | `"provided"`
















