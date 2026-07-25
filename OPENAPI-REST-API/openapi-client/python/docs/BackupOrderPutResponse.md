# BackupOrderPutResponse

Backup Order validation response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_continue** | **bool** |  | [optional] 
**errors** | **List[str]** |  | [optional] 
**service_type** | **int** |  | [optional] 
**service_cost** | **str** |  | [optional] 
**original_cost** | **str** |  | [optional] 
**repeat_service_cost** | **str** |  | [optional] 
**hostname** | **str** |  | [optional] 
**password** | **str** |  | [optional] 
**coupon** | **str** |  | [optional] 
**coupon_code** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.backup_order_put_response import BackupOrderPutResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BackupOrderPutResponse from a JSON string
backup_order_put_response_instance = BackupOrderPutResponse.from_json(json)
# print the JSON string representation of the object
print(BackupOrderPutResponse.to_json())

# convert the object into a dict
backup_order_put_response_dict = backup_order_put_response_instance.to_dict()
# create an instance of BackupOrderPutResponse from a dict
backup_order_put_response_from_dict = BackupOrderPutResponse.from_dict(backup_order_put_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


