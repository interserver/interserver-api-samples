# BackupOrderPutRequest

Parameters to submit to validate your backup order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**validate_only** | **bool** |  | [optional] 
**service_type** | **int** |  | [optional] 
**coupon** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.backup_order_put_request import BackupOrderPutRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BackupOrderPutRequest from a JSON string
backup_order_put_request_instance = BackupOrderPutRequest.from_json(json)
# print the JSON string representation of the object
print(BackupOrderPutRequest.to_json())

# convert the object into a dict
backup_order_put_request_dict = backup_order_put_request_instance.to_dict()
# create an instance of BackupOrderPutRequest from a dict
backup_order_put_request_from_dict = BackupOrderPutRequest.from_dict(backup_order_put_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


