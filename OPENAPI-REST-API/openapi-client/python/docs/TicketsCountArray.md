# TicketsCountArray


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**open** | **int** |  | [optional] 
**on_hold** | **int** |  | [optional] 
**closed** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.tickets_count_array import TicketsCountArray

# TODO update the JSON string below
json = "{}"
# create an instance of TicketsCountArray from a JSON string
tickets_count_array_instance = TicketsCountArray.from_json(json)
# print the JSON string representation of the object
print(TicketsCountArray.to_json())

# convert the object into a dict
tickets_count_array_dict = tickets_count_array_instance.to_dict()
# create an instance of TicketsCountArray from a dict
tickets_count_array_from_dict = TicketsCountArray.from_dict(tickets_count_array_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


