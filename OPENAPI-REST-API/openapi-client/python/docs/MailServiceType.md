# MailServiceType

Service type definition for a mail service, including name, pricing, and category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **str** | The ID of the service type. | [optional] 
**services_name** | **str** | The name of the service type. | [optional] 
**services_cost** | **str** | The cost of the service type. | [optional] 
**services_category** | **str** | The category of the service type. | [optional] 
**services_buyable** | **str** | Whether the service type is buyable. | [optional] 
**services_type** | **str** | The type of the service type. | [optional] 
**services_field1** | **str** | Additional field for the service type. | [optional] 
**services_field2** | **str** | Additional field for the service type. | [optional] 
**services_module** | **str** | The module of the service type. | [optional] 

## Example

```python
from interserver_api_client.models.mail_service_type import MailServiceType

# TODO update the JSON string below
json = "{}"
# create an instance of MailServiceType from a JSON string
mail_service_type_instance = MailServiceType.from_json(json)
# print the JSON string representation of the object
print(MailServiceType.to_json())

# convert the object into a dict
mail_service_type_dict = mail_service_type_instance.to_dict()
# create an instance of MailServiceType from a dict
mail_service_type_from_dict = MailServiceType.from_dict(mail_service_type_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


