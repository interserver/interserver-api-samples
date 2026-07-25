# PlaceScrubOrder201ResponseOrderDetailsCjParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container_tag_id** | **int** |  | [optional] 
**cid** | **int** |  | [optional] 
**oid** | **str** |  | [optional] 
**type** | **int** |  | [optional] 
**item1** | **str** |  | [optional] 
**amt1** | **int** |  | [optional] 
**qty1** | **int** |  | [optional] 
**currency** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.place_scrub_order201_response_order_details_cj_params import PlaceScrubOrder201ResponseOrderDetailsCjParams

# TODO update the JSON string below
json = "{}"
# create an instance of PlaceScrubOrder201ResponseOrderDetailsCjParams from a JSON string
place_scrub_order201_response_order_details_cj_params_instance = PlaceScrubOrder201ResponseOrderDetailsCjParams.from_json(json)
# print the JSON string representation of the object
print(PlaceScrubOrder201ResponseOrderDetailsCjParams.to_json())

# convert the object into a dict
place_scrub_order201_response_order_details_cj_params_dict = place_scrub_order201_response_order_details_cj_params_instance.to_dict()
# create an instance of PlaceScrubOrder201ResponseOrderDetailsCjParams from a dict
place_scrub_order201_response_order_details_cj_params_from_dict = PlaceScrubOrder201ResponseOrderDetailsCjParams.from_dict(place_scrub_order201_response_order_details_cj_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


