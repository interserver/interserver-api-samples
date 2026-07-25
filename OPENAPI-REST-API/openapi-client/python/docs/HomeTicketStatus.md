# HomeTicketStatus

Ticket statuses.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**open** | **int** | Count of open tickets. | [optional] 
**on_hold** | **int** | Count of tickets on hold. | [optional] 

## Example

```python
from interserver_api_client.models.home_ticket_status import HomeTicketStatus

# TODO update the JSON string below
json = "{}"
# create an instance of HomeTicketStatus from a JSON string
home_ticket_status_instance = HomeTicketStatus.from_json(json)
# print the JSON string representation of the object
print(HomeTicketStatus.to_json())

# convert the object into a dict
home_ticket_status_dict = home_ticket_status_instance.to_dict()
# create an instance of HomeTicketStatus from a dict
home_ticket_status_from_dict = HomeTicketStatus.from_dict(home_ticket_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


