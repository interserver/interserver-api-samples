# VpsExtraInfoTables

Additional informational tables displayed for a VPS service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_info** | [**VpsIPInfo**](VpsIPInfo.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_extra_info_tables import VpsExtraInfoTables

# TODO update the JSON string below
json = "{}"
# create an instance of VpsExtraInfoTables from a JSON string
vps_extra_info_tables_instance = VpsExtraInfoTables.from_json(json)
# print the JSON string representation of the object
print(VpsExtraInfoTables.to_json())

# convert the object into a dict
vps_extra_info_tables_dict = vps_extra_info_tables_instance.to_dict()
# create an instance of VpsExtraInfoTables from a dict
vps_extra_info_tables_from_dict = VpsExtraInfoTables.from_dict(vps_extra_info_tables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


