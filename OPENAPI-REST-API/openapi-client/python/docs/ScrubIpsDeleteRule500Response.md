# ScrubIpsDeleteRule500Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.scrub_ips_delete_rule500_response import ScrubIpsDeleteRule500Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScrubIpsDeleteRule500Response from a JSON string
scrub_ips_delete_rule500_response_instance = ScrubIpsDeleteRule500Response.from_json(json)
# print the JSON string representation of the object
print(ScrubIpsDeleteRule500Response.to_json())

# convert the object into a dict
scrub_ips_delete_rule500_response_dict = scrub_ips_delete_rule500_response_instance.to_dict()
# create an instance of ScrubIpsDeleteRule500Response from a dict
scrub_ips_delete_rule500_response_from_dict = ScrubIpsDeleteRule500Response.from_dict(scrub_ips_delete_rule500_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


