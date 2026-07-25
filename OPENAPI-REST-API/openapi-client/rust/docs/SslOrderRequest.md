# SslOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **i32** | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | **String** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approver_email** | **String** | Domain-control approver email (required for all SSL orders). | 
**frequency** | Option<**i32**> | Billing frequency in months (12, 24, or 36). | [optional][default to 12]
**coupon** | Option<**String**> | Coupon code. | [optional][default to ]
**csr_type** | Option<**CsrType**> | Whether the CSR is server-generated or customer-provided. (enum: generated, provided) | [optional][default to Generated]
**csr** | Option<**String**> | PEM-encoded CSR (>= 2048-bit) when csr_type=provided. | [optional][default to ]
**firstname** | Option<**String**> | Contact first name (defaults from account). | [optional]
**lastname** | Option<**String**> | Contact last name (defaults from account). | [optional]
**email** | Option<**String**> | Contact email (defaults from account). | [optional]
**address** | Option<**String**> | Contact address (defaults from account). | [optional]
**city** | Option<**String**> | Contact city (defaults from account). | [optional]
**state** | Option<**String**> | Contact state/region (defaults from account). | [optional]
**zip** | Option<**String**> | Contact postal code (defaults from account). | [optional]
**country** | Option<**String**> | Contact country (defaults from account). | [optional]
**phone** | Option<**String**> | Contact phone (defaults from account). | [optional]
**company** | Option<**String**> | Contact company/organization (defaults from account). | [optional]
**department** | Option<**String**> | Contact department (defaults to Administration). | [optional][default to Administration]
**agency** | Option<**String**> | EV certificate incorporating agency (only for EV packages). | [optional]
**business_category** | Option<**String**> | EV certificate business category (only for EV packages). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


