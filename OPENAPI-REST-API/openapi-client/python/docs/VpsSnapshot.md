# VpsSnapshot

A VPS snapshot (point-in-time backup) stored on the host node.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Snapshot name. | [optional] 
**used** | **int** | Disk space used by this snapshot in bytes. | [optional] 
**var_date** | **int** | Unix timestamp of when the snapshot was created. | [optional] 

## Example

```python
from interserver_api_client.models.vps_snapshot import VpsSnapshot

# TODO update the JSON string below
json = "{}"
# create an instance of VpsSnapshot from a JSON string
vps_snapshot_instance = VpsSnapshot.from_json(json)
# print the JSON string representation of the object
print(VpsSnapshot.to_json())

# convert the object into a dict
vps_snapshot_dict = vps_snapshot_instance.to_dict()
# create an instance of VpsSnapshot from a dict
vps_snapshot_from_dict = VpsSnapshot.from_dict(vps_snapshot_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


