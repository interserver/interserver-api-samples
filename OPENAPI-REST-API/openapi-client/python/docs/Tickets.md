# Tickets

A listing of support tickets.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ima** | **str** |  | 
**custid** | **str** |  | 
**view** | **str** |  | 
**current_page** | **int** |  | 
**limit** | **int** |  | 
**sortcol** | **int** |  | 
**sortdir** | **int** |  | 
**rows_offset** | **int** |  | 
**tickets** | [**List[TicketsRow]**](TicketsRow.md) |  | 
**pages** | **int** |  | 
**rows_total** | **int** |  | 
**inbox_count** | **int** |  | 
**count_array** | [**TicketsCountArray**](TicketsCountArray.md) |  | 
**view_text** | **str** |  | 

## Example

```python
from interserver_api_client.models.tickets import Tickets

# TODO update the JSON string below
json = "{}"
# create an instance of Tickets from a JSON string
tickets_instance = Tickets.from_json(json)
# print the JSON string representation of the object
print(Tickets.to_json())

# convert the object into a dict
tickets_dict = tickets_instance.to_dict()
# create an instance of Tickets from a dict
tickets_from_dict = Tickets.from_dict(tickets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


