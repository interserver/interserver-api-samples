# BackupOrderPostResponse

Backup Order Placement Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_continue** | **bool** |  | [optional] 
**errors** | **List[str]** |  | [optional] 
**total_cost** | **str** |  | [optional] 
**iid** | **str** |  | [optional] 
**iids** | **List[str]** |  | [optional] 
**real_iids** | **List[str]** |  | [optional] 
**service_id** | **int** |  | [optional] 
**invoice_description** | **str** |  | [optional] 
**cj_params** | [**BackupOrderPostResponseCjParams**](BackupOrderPostResponseCjParams.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.backup_order_post_response import BackupOrderPostResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BackupOrderPostResponse from a JSON string
backup_order_post_response_instance = BackupOrderPostResponse.from_json(json)
# print the JSON string representation of the object
print(BackupOrderPostResponse.to_json())

# convert the object into a dict
backup_order_post_response_dict = backup_order_post_response_instance.to_dict()
# create an instance of BackupOrderPostResponse from a dict
backup_order_post_response_from_dict = BackupOrderPostResponse.from_dict(backup_order_post_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


