# UpdateTicket

Update custom fields of the ticket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip** | **str** |  | [optional] 
**ip_address** | **str** |  | [optional] 
**customer_server_access** | **str** |  | [optional] 
**root_password** | **str** |  | [optional] 
**sudo_username** | **str** |  | [optional] 
**sudo_password** | **str** |  | [optional] 
**port** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.update_ticket import UpdateTicket

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateTicket from a JSON string
update_ticket_instance = UpdateTicket.from_json(json)
# print the JSON string representation of the object
print(UpdateTicket.to_json())

# convert the object into a dict
update_ticket_dict = update_ticket_instance.to_dict()
# create an instance of UpdateTicket from a dict
update_ticket_from_dict = UpdateTicket.from_dict(update_ticket_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


