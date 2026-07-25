# VPSCancel200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | 
**text** | **str** |  | 

## Example

```python
from interserver_api_client.models.vps_cancel200_response import VPSCancel200Response

# TODO update the JSON string below
json = "{}"
# create an instance of VPSCancel200Response from a JSON string
vps_cancel200_response_instance = VPSCancel200Response.from_json(json)
# print the JSON string representation of the object
print(VPSCancel200Response.to_json())

# convert the object into a dict
vps_cancel200_response_dict = vps_cancel200_response_instance.to_dict()
# create an instance of VPSCancel200Response from a dict
vps_cancel200_response_from_dict = VPSCancel200Response.from_dict(vps_cancel200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


