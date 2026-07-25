# LicensesOrderServiceTypes11482


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **str** | Service ID | [optional] 
**services_name** | **str** | Service Name | [optional] 
**services_cost** | **str** | Service Cost | [optional] 
**services_category** | **str** | Service Category | [optional] 
**services_buyable** | **str** | Buyable flag for Service | [optional] 
**services_type** | **str** | Service Type | [optional] 
**services_field1** | **str** | Field 1 of Service | [optional] 
**services_field2** | **str** | Field 2 of Service | [optional] 
**services_module** | **str** | Module of Service | [optional] 

## Example

```python
from interserver_api_client.models.licenses_order_service_types11482 import LicensesOrderServiceTypes11482

# TODO update the JSON string below
json = "{}"
# create an instance of LicensesOrderServiceTypes11482 from a JSON string
licenses_order_service_types11482_instance = LicensesOrderServiceTypes11482.from_json(json)
# print the JSON string representation of the object
print(LicensesOrderServiceTypes11482.to_json())

# convert the object into a dict
licenses_order_service_types11482_dict = licenses_order_service_types11482_instance.to_dict()
# create an instance of LicensesOrderServiceTypes11482 from a dict
licenses_order_service_types11482_from_dict = LicensesOrderServiceTypes11482.from_dict(licenses_order_service_types11482_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


