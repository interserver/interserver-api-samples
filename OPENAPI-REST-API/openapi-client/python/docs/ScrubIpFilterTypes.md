# ScrubIpFilterTypes

Available scrub filter types for building firewall rules.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**filters** | [**Dict[str, ScrubIpFilterTypesFiltersValue]**](ScrubIpFilterTypesFiltersValue.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.scrub_ip_filter_types import ScrubIpFilterTypes

# TODO update the JSON string below
json = "{}"
# create an instance of ScrubIpFilterTypes from a JSON string
scrub_ip_filter_types_instance = ScrubIpFilterTypes.from_json(json)
# print the JSON string representation of the object
print(ScrubIpFilterTypes.to_json())

# convert the object into a dict
scrub_ip_filter_types_dict = scrub_ip_filter_types_instance.to_dict()
# create an instance of ScrubIpFilterTypes from a dict
scrub_ip_filter_types_from_dict = ScrubIpFilterTypes.from_dict(scrub_ip_filter_types_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


