# LicensesOrder

Available license packages and pricing for ordering a new software license.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_categories** | [**LicensesOrderServiceCategories**](LicensesOrderServiceCategories.md) |  | [optional] 
**package_costs** | [**LicensesOrderPackageCosts**](LicensesOrderPackageCosts.md) |  | [optional] 
**service_types** | [**LicensesOrderServiceTypes**](LicensesOrderServiceTypes.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.licenses_order import LicensesOrder

# TODO update the JSON string below
json = "{}"
# create an instance of LicensesOrder from a JSON string
licenses_order_instance = LicensesOrder.from_json(json)
# print the JSON string representation of the object
print(LicensesOrder.to_json())

# convert the object into a dict
licenses_order_dict = licenses_order_instance.to_dict()
# create an instance of LicensesOrder from a dict
licenses_order_from_dict = LicensesOrder.from_dict(licenses_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


