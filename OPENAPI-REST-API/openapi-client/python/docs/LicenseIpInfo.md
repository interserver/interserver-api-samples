# LicenseIpInfo

IP address information table for a software license service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | Table title | [optional] 
**rows** | [**List[LicenseIpInfoRow]**](LicenseIpInfoRow.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.license_ip_info import LicenseIpInfo

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseIpInfo from a JSON string
license_ip_info_instance = LicenseIpInfo.from_json(json)
# print the JSON string representation of the object
print(LicenseIpInfo.to_json())

# convert the object into a dict
license_ip_info_dict = license_ip_info_instance.to_dict()
# create an instance of LicenseIpInfo from a dict
license_ip_info_from_dict = LicenseIpInfo.from_dict(license_ip_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


