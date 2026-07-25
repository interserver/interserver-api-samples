# ModuleSettings

The settings for a module.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_id_offset** | **int** |  | 
**use_repeat_invoice** | **bool** |  | 
**use_packages** | **bool** |  | 
**billing_days_offset** | **int** |  | 
**imgname** | **str** |  | 
**repeat_billing_method** | **int** |  | 
**delete_pending_days** | **int** |  | 
**suspend_days** | **int** |  | 
**suspend_warning_days** | **int** |  | 
**title** | **str** |  | 
**menuname** | **str** |  | 
**email_from** | **str** |  | 
**tblname** | **str** |  | 
**table** | **str** |  | 
**title_field** | **str** |  | 
**prefix** | **str** |  | 
**title_field2** | **str** |  | [optional] 
**title_field3** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.module_settings import ModuleSettings

# TODO update the JSON string below
json = "{}"
# create an instance of ModuleSettings from a JSON string
module_settings_instance = ModuleSettings.from_json(json)
# print the JSON string representation of the object
print(ModuleSettings.to_json())

# convert the object into a dict
module_settings_dict = module_settings_instance.to_dict()
# create an instance of ModuleSettings from a dict
module_settings_from_dict = ModuleSettings.from_dict(module_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


