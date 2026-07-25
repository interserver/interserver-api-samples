# PostWebsiteMigration200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **str** | Confirmation message. | [optional] 
**ticket** | **int** | The support ticket ID created for tracking the migration. Use this with &#x60;/tickets/{id}&#x60; to check migration progress. | [optional] 

## Example

```python
from interserver_api_client.models.post_website_migration200_response import PostWebsiteMigration200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PostWebsiteMigration200Response from a JSON string
post_website_migration200_response_instance = PostWebsiteMigration200Response.from_json(json)
# print the JSON string representation of the object
print(PostWebsiteMigration200Response.to_json())

# convert the object into a dict
post_website_migration200_response_dict = post_website_migration200_response_instance.to_dict()
# create an instance of PostWebsiteMigration200Response from a dict
post_website_migration200_response_from_dict = PostWebsiteMigration200Response.from_dict(post_website_migration200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


