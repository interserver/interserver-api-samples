# QuickserverExtraInfoTables


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_info** | [**QuickserverIpInfo**](QuickserverIpInfo.md) |  | [optional] 
**addons** | [**QuickserverAddons**](QuickserverAddons.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_extra_info_tables import QuickserverExtraInfoTables

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverExtraInfoTables from a JSON string
quickserver_extra_info_tables_instance = QuickserverExtraInfoTables.from_json(json)
# print the JSON string representation of the object
print(QuickserverExtraInfoTables.to_json())

# convert the object into a dict
quickserver_extra_info_tables_dict = quickserver_extra_info_tables_instance.to_dict()
# create an instance of QuickserverExtraInfoTables from a dict
quickserver_extra_info_tables_from_dict = QuickserverExtraInfoTables.from_dict(quickserver_extra_info_tables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


