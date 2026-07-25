# ScrubIpsRowSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scrub_ip_id** | **int** |  | [optional] 
**repeat_invoices_cost** | **float** |  | [optional] 
**scrub_ip_ip** | **str** |  | [optional] 
**scrub_ip_status** | **str** |  | [optional] 
**services_name** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.scrub_ips_row_schema import ScrubIpsRowSchema

# TODO update the JSON string below
json = "{}"
# create an instance of ScrubIpsRowSchema from a JSON string
scrub_ips_row_schema_instance = ScrubIpsRowSchema.from_json(json)
# print the JSON string representation of the object
print(ScrubIpsRowSchema.to_json())

# convert the object into a dict
scrub_ips_row_schema_dict = scrub_ips_row_schema_instance.to_dict()
# create an instance of ScrubIpsRowSchema from a dict
scrub_ips_row_schema_from_dict = ScrubIpsRowSchema.from_dict(scrub_ips_row_schema_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


