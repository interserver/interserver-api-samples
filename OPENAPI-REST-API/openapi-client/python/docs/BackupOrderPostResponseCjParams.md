# BackupOrderPostResponseCjParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container_tag_id** | **str** |  | [optional] 
**cid** | **str** |  | [optional] 
**oid** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**item1** | **str** |  | [optional] 
**amt1** | **str** |  | [optional] 
**qty1** | **int** |  | [optional] 
**currency** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.backup_order_post_response_cj_params import BackupOrderPostResponseCjParams

# TODO update the JSON string below
json = "{}"
# create an instance of BackupOrderPostResponseCjParams from a JSON string
backup_order_post_response_cj_params_instance = BackupOrderPostResponseCjParams.from_json(json)
# print the JSON string representation of the object
print(BackupOrderPostResponseCjParams.to_json())

# convert the object into a dict
backup_order_post_response_cj_params_dict = backup_order_post_response_cj_params_instance.to_dict()
# create an instance of BackupOrderPostResponseCjParams from a dict
backup_order_post_response_cj_params_from_dict = BackupOrderPostResponseCjParams.from_dict(backup_order_post_response_cj_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


