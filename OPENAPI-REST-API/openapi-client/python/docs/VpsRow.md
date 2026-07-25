# VpsRow

A result row from the `Vps` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vps_id** | **str** | The id of the vps. | 
**vps_name** | **str** | The name of the vps. | 
**repeat_invoices_cost** | **str** | The repeat invoices cost of the vps. | 
**vps_hostname** | **str** | The hostname of the vps. | 
**vps_ip** | **str** | The ip of the vps. | 
**vps_status** | **str** | The status of the vps. | 
**services_name** | **str** | The services name of the vps. | 
**vps_comment** | **str** | The comment of the vps. | 

## Example

```python
from interserver_api_client.models.vps_row import VpsRow

# TODO update the JSON string below
json = "{}"
# create an instance of VpsRow from a JSON string
vps_row_instance = VpsRow.from_json(json)
# print the JSON string representation of the object
print(VpsRow.to_json())

# convert the object into a dict
vps_row_dict = vps_row_instance.to_dict()
# create an instance of VpsRow from a dict
vps_row_from_dict = VpsRow.from_dict(vps_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


