# TicketDetails

Detailed ticket information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ticketid** | **int** |  | [optional] 
**ticketmaskid** | **str** |  | [optional] 
**department** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**priority** | **str** |  | [optional] 
**subject** | **str** |  | [optional] 
**created_on** | **str** |  | [optional] 
**updated_on** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.ticket_details import TicketDetails

# TODO update the JSON string below
json = "{}"
# create an instance of TicketDetails from a JSON string
ticket_details_instance = TicketDetails.from_json(json)
# print the JSON string representation of the object
print(TicketDetails.to_json())

# convert the object into a dict
ticket_details_dict = ticket_details_instance.to_dict()
# create an instance of TicketDetails from a dict
ticket_details_from_dict = TicketDetails.from_dict(ticket_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


