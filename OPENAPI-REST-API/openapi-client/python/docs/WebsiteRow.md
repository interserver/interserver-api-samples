# WebsiteRow

A result row from the `Webhosting` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**website_id** | **str** | The id of the website. | 
**website_hostname** | **str** | The hostname of the website. | 
**repeat_invoices_cost** | **str** | The repeat invoices cost of the website. | 
**website_status** | **str** | The status of the website. | 
**services_name** | **str** | The services name of the website. | 
**website_comment** | **str** | The comment of the website. | 

## Example

```python
from interserver_api_client.models.website_row import WebsiteRow

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteRow from a JSON string
website_row_instance = WebsiteRow.from_json(json)
# print the JSON string representation of the object
print(WebsiteRow.to_json())

# convert the object into a dict
website_row_dict = website_row_instance.to_dict()
# create an instance of WebsiteRow from a dict
website_row_from_dict = WebsiteRow.from_dict(website_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


