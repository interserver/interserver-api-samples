# WebsiteBackups

List of available backups for a webhosting service with their names and sizes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from interserver_api_client.models.website_backups import WebsiteBackups

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteBackups from a JSON string
website_backups_instance = WebsiteBackups.from_json(json)
# print the JSON string representation of the object
print(WebsiteBackups.to_json())

# convert the object into a dict
website_backups_dict = website_backups_instance.to_dict()
# create an instance of WebsiteBackups from a dict
website_backups_from_dict = WebsiteBackups.from_dict(website_backups_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


