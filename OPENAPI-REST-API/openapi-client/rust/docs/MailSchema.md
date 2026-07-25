# MailSchema

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**models::MailServiceInfo**](MailServiceInfo.md) |  | 
**client_links** | [**Vec<models::MailClientLink>**](MailClientLink.md) | Links related to the mail service for clients. | 
**billing_details** | [**models::MailBillingDetails**](MailBillingDetails.md) |  | 
**cust_currency** | **String** | The customer's currency. | 
**cust_currency_symbol** | **String** | The currency symbol for the customer. | 
**package** | **String** | The package of the mail service. | 
**service_extra** | Option<**Vec<String>**> | Extra information for the mail service. | [optional]
**extra_info_tables** | [**models::MailSchemaExtraInfoTables**](MailSchemaExtraInfoTables.md) |  | 
**service_type** | [**models::MailServiceType**](MailServiceType.md) |  | 
**usage_count** | **String** | The usage count of the mail service. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


