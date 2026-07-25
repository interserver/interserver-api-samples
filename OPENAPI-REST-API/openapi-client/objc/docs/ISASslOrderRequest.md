# ISASslOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **NSNumber*** | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | **NSString*** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approverEmail** | **NSString*** | Domain-control approver email (required for all SSL orders). | 
**frequency** | **NSNumber*** | Billing frequency in months (12, 24, or 36). | [optional] [default to @12]
**coupon** | **NSString*** | Coupon code. | [optional] [default to @""]
**csrType** | **NSString*** | Whether the CSR is server-generated or customer-provided. | [optional] [default to @"generated"]
**csr** | **NSString*** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to @""]
**firstname** | **NSString*** | Contact first name (defaults from account). | [optional] 
**lastname** | **NSString*** | Contact last name (defaults from account). | [optional] 
**email** | **NSString*** | Contact email (defaults from account). | [optional] 
**address** | **NSString*** | Contact address (defaults from account). | [optional] 
**city** | **NSString*** | Contact city (defaults from account). | [optional] 
**state** | **NSString*** | Contact state/region (defaults from account). | [optional] 
**zip** | **NSString*** | Contact postal code (defaults from account). | [optional] 
**country** | **NSString*** | Contact country (defaults from account). | [optional] 
**phone** | **NSString*** | Contact phone (defaults from account). | [optional] 
**company** | **NSString*** | Contact company/organization (defaults from account). | [optional] 
**department** | **NSString*** | Contact department (defaults to Administration). | [optional] [default to @"Administration"]
**agency** | **NSString*** | EV certificate incorporating agency (only for EV packages). | [optional] 
**businessCategory** | **NSString*** | EV certificate business category (only for EV packages). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


