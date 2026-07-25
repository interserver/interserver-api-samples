# WebsiteBackupsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**size** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.website_backups_inner import WebsiteBackupsInner

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteBackupsInner from a JSON string
website_backups_inner_instance = WebsiteBackupsInner.from_json(json)
# print the JSON string representation of the object
print(WebsiteBackupsInner.to_json())

# convert the object into a dict
website_backups_inner_dict = website_backups_inner_instance.to_dict()
# create an instance of WebsiteBackupsInner from a dict
website_backups_inner_from_dict = WebsiteBackupsInner.from_dict(website_backups_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


