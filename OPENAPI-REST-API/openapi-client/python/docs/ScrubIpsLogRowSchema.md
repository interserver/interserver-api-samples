# ScrubIpsLogRowSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_date** | **str** |  | [optional] 
**filter** | **str** |  | [optional] 
**blocked_ip** | **str** |  | [optional] 
**target_ip** | **str** |  | [optional] 
**target_port** | **float** |  | [optional] 
**protocol** | **str** |  | [optional] 
**byte_count** | **float** |  | [optional] 
**xdp_action** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.scrub_ips_log_row_schema import ScrubIpsLogRowSchema

# TODO update the JSON string below
json = "{}"
# create an instance of ScrubIpsLogRowSchema from a JSON string
scrub_ips_log_row_schema_instance = ScrubIpsLogRowSchema.from_json(json)
# print the JSON string representation of the object
print(ScrubIpsLogRowSchema.to_json())

# convert the object into a dict
scrub_ips_log_row_schema_dict = scrub_ips_log_row_schema_instance.to_dict()
# create an instance of ScrubIpsLogRowSchema from a dict
scrub_ips_log_row_schema_from_dict = ScrubIpsLogRowSchema.from_dict(scrub_ips_log_row_schema_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


