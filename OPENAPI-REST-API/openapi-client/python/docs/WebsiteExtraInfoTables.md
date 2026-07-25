# WebsiteExtraInfoTables

Supplementary information tables displayed for a webhosting service (links, DNS, preview).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] 
**preview** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] 
**dns** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.website_extra_info_tables import WebsiteExtraInfoTables

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteExtraInfoTables from a JSON string
website_extra_info_tables_instance = WebsiteExtraInfoTables.from_json(json)
# print the JSON string representation of the object
print(WebsiteExtraInfoTables.to_json())

# convert the object into a dict
website_extra_info_tables_dict = website_extra_info_tables_instance.to_dict()
# create an instance of WebsiteExtraInfoTables from a dict
website_extra_info_tables_from_dict = WebsiteExtraInfoTables.from_dict(website_extra_info_tables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


