# ScrubIpsDeleteRule400Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.scrub_ips_delete_rule400_response import ScrubIpsDeleteRule400Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScrubIpsDeleteRule400Response from a JSON string
scrub_ips_delete_rule400_response_instance = ScrubIpsDeleteRule400Response.from_json(json)
# print the JSON string representation of the object
print(ScrubIpsDeleteRule400Response.to_json())

# convert the object into a dict
scrub_ips_delete_rule400_response_dict = scrub_ips_delete_rule400_response_instance.to_dict()
# create an instance of ScrubIpsDeleteRule400Response from a dict
scrub_ips_delete_rule400_response_from_dict = ScrubIpsDeleteRule400Response.from_dict(scrub_ips_delete_rule400_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


