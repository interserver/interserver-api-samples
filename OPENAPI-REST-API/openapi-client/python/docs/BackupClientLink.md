# BackupClientLink

A navigation link for backup service actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** | Label of the client link. | [optional] 
**link** | **str** | Link URL of the client link. | [optional] 
**icon** | **str** | Icon of the client link. | [optional] 
**icon_text** | **str** | Icon text of the client link. | [optional] 
**help_text** | **str** | Help text of the client link. | [optional] 
**other_attr** | **str** | Other attributes of the client link. | [optional] 

## Example

```python
from interserver_api_client.models.backup_client_link import BackupClientLink

# TODO update the JSON string below
json = "{}"
# create an instance of BackupClientLink from a JSON string
backup_client_link_instance = BackupClientLink.from_json(json)
# print the JSON string representation of the object
print(BackupClientLink.to_json())

# convert the object into a dict
backup_client_link_dict = backup_client_link_instance.to_dict()
# create an instance of BackupClientLink from a dict
backup_client_link_from_dict = BackupClientLink.from_dict(backup_client_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


