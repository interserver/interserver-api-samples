# interserverapi::SslOrderRequest

Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **integer** | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | **character** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approver_email** | **character** | Domain-control approver email (required for all SSL orders). | 
**frequency** | **integer** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12] 
**coupon** | **character** | Coupon code. | [optional] [default to &quot;&quot;] 
**csr_type** | **character** | Whether the CSR is server-generated or customer-provided. | [optional] [default to &quot;generated&quot;] [Enum: [generated, provided]] 
**csr** | **character** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to &quot;&quot;] 
**firstname** | **character** | Contact first name (defaults from account). | [optional] 
**lastname** | **character** | Contact last name (defaults from account). | [optional] 
**email** | **character** | Contact email (defaults from account). | [optional] 
**address** | **character** | Contact address (defaults from account). | [optional] 
**city** | **character** | Contact city (defaults from account). | [optional] 
**state** | **character** | Contact state/region (defaults from account). | [optional] 
**zip** | **character** | Contact postal code (defaults from account). | [optional] 
**country** | **character** | Contact country (defaults from account). | [optional] 
**phone** | **character** | Contact phone (defaults from account). | [optional] 
**company** | **character** | Contact company/organization (defaults from account). | [optional] 
**department** | **character** | Contact department (defaults to Administration). | [optional] [default to &quot;Administration&quot;] 
**agency** | **character** | EV certificate incorporating agency (only for EV packages). | [optional] 
**business_category** | **character** | EV certificate business category (only for EV packages). | [optional] 


