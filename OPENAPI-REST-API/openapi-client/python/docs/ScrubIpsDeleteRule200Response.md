# ScrubIpsDeleteRule200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.scrub_ips_delete_rule200_response import ScrubIpsDeleteRule200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScrubIpsDeleteRule200Response from a JSON string
scrub_ips_delete_rule200_response_instance = ScrubIpsDeleteRule200Response.from_json(json)
# print the JSON string representation of the object
print(ScrubIpsDeleteRule200Response.to_json())

# convert the object into a dict
scrub_ips_delete_rule200_response_dict = scrub_ips_delete_rule200_response_instance.to_dict()
# create an instance of ScrubIpsDeleteRule200Response from a dict
scrub_ips_delete_rule200_response_from_dict = ScrubIpsDeleteRule200Response.from_dict(scrub_ips_delete_rule200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


