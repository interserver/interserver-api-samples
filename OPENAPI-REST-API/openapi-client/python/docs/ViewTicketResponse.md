# ViewTicketResponse

Ticket details

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | 
**ticket** | [**TicketDetails**](TicketDetails.md) |  | 
**ticket_custom_fields** | [**TicketCustomFieldDetails**](TicketCustomFieldDetails.md) |  | [optional] 
**ticket_posts** | [**TicketPostDetails**](TicketPostDetails.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.view_ticket_response import ViewTicketResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ViewTicketResponse from a JSON string
view_ticket_response_instance = ViewTicketResponse.from_json(json)
# print the JSON string representation of the object
print(ViewTicketResponse.to_json())

# convert the object into a dict
view_ticket_response_dict = view_ticket_response_instance.to_dict()
# create an instance of ViewTicketResponse from a dict
view_ticket_response_from_dict = ViewTicketResponse.from_dict(view_ticket_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


