# TicketNew

New helpdesk ticket request.  

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | 
**body** | **str** |  | 
**service_id** | **int** |  | [optional] 
**service_module** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.ticket_new import TicketNew

# TODO update the JSON string below
json = "{}"
# create an instance of TicketNew from a JSON string
ticket_new_instance = TicketNew.from_json(json)
# print the JSON string representation of the object
print(TicketNew.to_json())

# convert the object into a dict
ticket_new_dict = ticket_new_instance.to_dict()
# create an instance of TicketNew from a dict
ticket_new_from_dict = TicketNew.from_dict(ticket_new_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


