# LicenseOrderRequest

Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **int** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **str** | IP address the license is bound to. | 
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **int** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **str** | Coupon code. | [optional] [default to '']
**comment** | **str** | Free-form note saved on the service row. | [optional] [default to '']

## Example

```python
from interserver_api_client.models.license_order_request import LicenseOrderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseOrderRequest from a JSON string
license_order_request_instance = LicenseOrderRequest.from_json(json)
# print the JSON string representation of the object
print(LicenseOrderRequest.to_json())

# convert the object into a dict
license_order_request_dict = license_order_request_instance.to_dict()
# create an instance of LicenseOrderRequest from a dict
license_order_request_from_dict = LicenseOrderRequest.from_dict(license_order_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


