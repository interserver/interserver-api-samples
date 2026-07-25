# LicenseServiceInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**license_id** | **str** | License ID | 
**license_type** | **str** | License type | 
**license_currency** | **str** | License currency | 
**license_order_date** | **datetime** | License order date | 
**license_custid** | **str** | Customer ID | 
**license_ip** | **str** | License IP | 
**license_status** | **str** | License status | 
**license_invoice** | **str** | License invoice | 
**license_coupon** | **str** | License coupon | 
**license_hostname** | **str** | License hostname | [optional] 
**license_key** | **str** | License key | [optional] 
**license_extra** | **str** | Additional license information | [optional] 

## Example

```python
from interserver_api_client.models.license_service_info import LicenseServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseServiceInfo from a JSON string
license_service_info_instance = LicenseServiceInfo.from_json(json)
# print the JSON string representation of the object
print(LicenseServiceInfo.to_json())

# convert the object into a dict
license_service_info_dict = license_service_info_instance.to_dict()
# create an instance of LicenseServiceInfo from a dict
license_service_info_from_dict = LicenseServiceInfo.from_dict(license_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


