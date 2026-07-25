# BackupsOrder

Available backup storage packages and pricing for ordering a new backup service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_costs** | [**BackupsOrderPackageCosts**](BackupsOrderPackageCosts.md) |  | 
**service_types** | [**BackupsOrderServiceTypes**](BackupsOrderServiceTypes.md) |  | 

## Example

```python
from interserver_api_client.models.backups_order import BackupsOrder

# TODO update the JSON string below
json = "{}"
# create an instance of BackupsOrder from a JSON string
backups_order_instance = BackupsOrder.from_json(json)
# print the JSON string representation of the object
print(BackupsOrder.to_json())

# convert the object into a dict
backups_order_dict = backups_order_instance.to_dict()
# create an instance of BackupsOrder from a dict
backups_order_from_dict = BackupsOrder.from_dict(backups_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


