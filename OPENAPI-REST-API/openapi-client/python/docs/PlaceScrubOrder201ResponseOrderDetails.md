# PlaceScrubOrder201ResponseOrderDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_cost** | **int** |  | [optional] 
**service_id** | **int** |  | [optional] 
**invoice_id** | **int** |  | [optional] 
**invoice_description** | **str** |  | [optional] 
**cj_params** | [**PlaceScrubOrder201ResponseOrderDetailsCjParams**](PlaceScrubOrder201ResponseOrderDetailsCjParams.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.place_scrub_order201_response_order_details import PlaceScrubOrder201ResponseOrderDetails

# TODO update the JSON string below
json = "{}"
# create an instance of PlaceScrubOrder201ResponseOrderDetails from a JSON string
place_scrub_order201_response_order_details_instance = PlaceScrubOrder201ResponseOrderDetails.from_json(json)
# print the JSON string representation of the object
print(PlaceScrubOrder201ResponseOrderDetails.to_json())

# convert the object into a dict
place_scrub_order201_response_order_details_dict = place_scrub_order201_response_order_details_instance.to_dict()
# create an instance of PlaceScrubOrder201ResponseOrderDetails from a dict
place_scrub_order201_response_order_details_from_dict = PlaceScrubOrder201ResponseOrderDetails.from_dict(place_scrub_order201_response_order_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


