# PlaceScrubOrder201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 
**order_details** | [**PlaceScrubOrder201ResponseOrderDetails**](PlaceScrubOrder201ResponseOrderDetails.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.place_scrub_order201_response import PlaceScrubOrder201Response

# TODO update the JSON string below
json = "{}"
# create an instance of PlaceScrubOrder201Response from a JSON string
place_scrub_order201_response_instance = PlaceScrubOrder201Response.from_json(json)
# print the JSON string representation of the object
print(PlaceScrubOrder201Response.to_json())

# convert the object into a dict
place_scrub_order201_response_dict = place_scrub_order201_response_instance.to_dict()
# create an instance of PlaceScrubOrder201Response from a dict
place_scrub_order201_response_from_dict = PlaceScrubOrder201Response.from_dict(place_scrub_order201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


