# TicketCustomFieldDetails

Optional fields providing additional info in ticket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_server_access** | **str** |  | [optional] 
**ip_address** | **str** |  | [optional] 
**root_password** | **str** |  | [optional] 
**sudo_user** | **str** |  | [optional] 
**sudo_password** | **int** |  | [optional] 
**port** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.ticket_custom_field_details import TicketCustomFieldDetails

# TODO update the JSON string below
json = "{}"
# create an instance of TicketCustomFieldDetails from a JSON string
ticket_custom_field_details_instance = TicketCustomFieldDetails.from_json(json)
# print the JSON string representation of the object
print(TicketCustomFieldDetails.to_json())

# convert the object into a dict
ticket_custom_field_details_dict = ticket_custom_field_details_instance.to_dict()
# create an instance of TicketCustomFieldDetails from a dict
ticket_custom_field_details_from_dict = TicketCustomFieldDetails.from_dict(ticket_custom_field_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


