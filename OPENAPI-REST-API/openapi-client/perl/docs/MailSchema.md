# InterServerAPI::Object::MailSchema

## Load the model package
```perl
use InterServerAPI::Object::MailSchema;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**MailServiceInfo**](MailServiceInfo.md) |  | 
**client_links** | [**ARRAY[MailClientLink]**](MailClientLink.md) | Links related to the mail service for clients. | 
**billing_details** | [**MailBillingDetails**](MailBillingDetails.md) |  | 
**cust_currency** | **string** | The customer&#39;s currency. | 
**cust_currency_symbol** | **string** | The currency symbol for the customer. | 
**package** | **string** | The package of the mail service. | 
**service_extra** | **ARRAY[string]** | Extra information for the mail service. | [optional] 
**extra_info_tables** | [**MailSchemaExtraInfoTables**](MailSchemaExtraInfoTables.md) |  | 
**service_type** | [**MailServiceType**](MailServiceType.md) |  | 
**usage_count** | **string** | The usage count of the mail service. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


