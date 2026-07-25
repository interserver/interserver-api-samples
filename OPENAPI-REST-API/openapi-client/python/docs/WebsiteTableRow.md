# WebsiteTableRow


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **str** | Description for the row | [optional] 
**value** | **str** | Value for the row | [optional] 

## Example

```python
from interserver_api_client.models.website_table_row import WebsiteTableRow

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteTableRow from a JSON string
website_table_row_instance = WebsiteTableRow.from_json(json)
# print the JSON string representation of the object
print(WebsiteTableRow.to_json())

# convert the object into a dict
website_table_row_dict = website_table_row_instance.to_dict()
# create an instance of WebsiteTableRow from a dict
website_table_row_from_dict = WebsiteTableRow.from_dict(website_table_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


