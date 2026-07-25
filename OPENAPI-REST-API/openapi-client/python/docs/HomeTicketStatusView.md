# HomeTicketStatusView

Ticket statuses with view numbers.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_4** | **str** | Status corresponding to view number 4. | [optional] 
**var_5** | **str** | Status corresponding to view number 5. | [optional] 
**var_6** | **str** | Status corresponding to view number 6. | [optional] 

## Example

```python
from interserver_api_client.models.home_ticket_status_view import HomeTicketStatusView

# TODO update the JSON string below
json = "{}"
# create an instance of HomeTicketStatusView from a JSON string
home_ticket_status_view_instance = HomeTicketStatusView.from_json(json)
# print the JSON string representation of the object
print(HomeTicketStatusView.to_json())

# convert the object into a dict
home_ticket_status_view_dict = home_ticket_status_view_instance.to_dict()
# create an instance of HomeTicketStatusView from a dict
home_ticket_status_view_from_dict = HomeTicketStatusView.from_dict(home_ticket_status_view_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


