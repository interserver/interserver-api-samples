# InterserverApiClient.SslOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **Number** | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | **String** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approver_email** | **String** | Domain-control approver email (required for all SSL orders). | 
**frequency** | **Number** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**coupon** | **String** | Coupon code. | [optional] [default to &#39;&#39;]
**csr_type** | **String** | Whether the CSR is server-generated or customer-provided. | [optional] [default to &#39;generated&#39;]
**csr** | **String** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to &#39;&#39;]
**firstname** | **String** | Contact first name (defaults from account). | [optional] 
**lastname** | **String** | Contact last name (defaults from account). | [optional] 
**email** | **String** | Contact email (defaults from account). | [optional] 
**address** | **String** | Contact address (defaults from account). | [optional] 
**city** | **String** | Contact city (defaults from account). | [optional] 
**state** | **String** | Contact state/region (defaults from account). | [optional] 
**zip** | **String** | Contact postal code (defaults from account). | [optional] 
**country** | **String** | Contact country (defaults from account). | [optional] 
**phone** | **String** | Contact phone (defaults from account). | [optional] 
**company** | **String** | Contact company/organization (defaults from account). | [optional] 
**department** | **String** | Contact department (defaults to Administration). | [optional] [default to &#39;Administration&#39;]
**agency** | **String** | EV certificate incorporating agency (only for EV packages). | [optional] 
**business_category** | **String** | EV certificate business category (only for EV packages). | [optional] 



## Enum: CsrTypeEnum


* `generated` (value: `"generated"`)

* `provided` (value: `"provided"`)

* `unknown_default_open_api` (value: `"unknown_default_open_api"`)




