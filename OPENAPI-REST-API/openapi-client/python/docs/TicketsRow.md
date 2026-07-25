# TicketsRow

Information about a single ticket.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | 
**ticketmaskid** | **str** |  | 
**lastreplier** | **str** |  | 
**status** | **str** |  | 
**priority** | **str** |  | 
**total_replies** | **int** |  | 
**lastactivity** | **str** |  | 
**departmenttitle** | **str** |  | 
**ticketid** | **int** |  | 
**can_close** | **str** |  | 
**attachments** | **object** |  | 
**status_text** | **str** |  | 
**checked** | **bool** |  | 

## Example

```python
from interserver_api_client.models.tickets_row import TicketsRow

# TODO update the JSON string below
json = "{}"
# create an instance of TicketsRow from a JSON string
tickets_row_instance = TicketsRow.from_json(json)
# print the JSON string representation of the object
print(TicketsRow.to_json())

# convert the object into a dict
tickets_row_dict = tickets_row_instance.to_dict()
# create an instance of TicketsRow from a dict
tickets_row_from_dict = TicketsRow.from_dict(tickets_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


