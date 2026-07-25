# MailSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**MailServiceInfo**](MailServiceInfo.md) |  | 
**client_links** | [**List[MailClientLink]**](MailClientLink.md) | Links related to the mail service for clients. | 
**billing_details** | [**MailBillingDetails**](MailBillingDetails.md) |  | 
**cust_currency** | **str** | The customer&#39;s currency. | 
**cust_currency_symbol** | **str** | The currency symbol for the customer. | 
**package** | **str** | The package of the mail service. | 
**service_extra** | **List[str]** | Extra information for the mail service. | [optional] 
**extra_info_tables** | [**MailSchemaExtraInfoTables**](MailSchemaExtraInfoTables.md) |  | 
**service_type** | [**MailServiceType**](MailServiceType.md) |  | 
**usage_count** | **str** | The usage count of the mail service. | 

## Example

```python
from interserver_api_client.models.mail_schema import MailSchema

# TODO update the JSON string below
json = "{}"
# create an instance of MailSchema from a JSON string
mail_schema_instance = MailSchema.from_json(json)
# print the JSON string representation of the object
print(MailSchema.to_json())

# convert the object into a dict
mail_schema_dict = mail_schema_instance.to_dict()
# create an instance of MailSchema from a dict
mail_schema_from_dict = MailSchema.from_dict(mail_schema_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


