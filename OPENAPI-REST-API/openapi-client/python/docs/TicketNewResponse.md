# TicketNewResponse

Response returned after creating a new support ticket.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **str** |  | 
**success** | **bool** |  | 
**ticket_id** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.ticket_new_response import TicketNewResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TicketNewResponse from a JSON string
ticket_new_response_instance = TicketNewResponse.from_json(json)
# print the JSON string representation of the object
print(TicketNewResponse.to_json())

# convert the object into a dict
ticket_new_response_dict = ticket_new_response_instance.to_dict()
# create an instance of TicketNewResponse from a dict
ticket_new_response_from_dict = TicketNewResponse.from_dict(ticket_new_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


