# WebsiteTable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | Title of the table | [optional] 
**rows** | [**List[WebsiteTableRow]**](WebsiteTableRow.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.website_table import WebsiteTable

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteTable from a JSON string
website_table_instance = WebsiteTable.from_json(json)
# print the JSON string representation of the object
print(WebsiteTable.to_json())

# convert the object into a dict
website_table_dict = website_table_instance.to_dict()
# create an instance of WebsiteTable from a dict
website_table_from_dict = WebsiteTable.from_dict(website_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


