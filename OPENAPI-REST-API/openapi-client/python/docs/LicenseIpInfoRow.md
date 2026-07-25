# LicenseIpInfoRow

A single row in the license IP information table.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **str** | Row description | [optional] 
**value** | **str** | Row value | [optional] 

## Example

```python
from interserver_api_client.models.license_ip_info_row import LicenseIpInfoRow

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseIpInfoRow from a JSON string
license_ip_info_row_instance = LicenseIpInfoRow.from_json(json)
# print the JSON string representation of the object
print(LicenseIpInfoRow.to_json())

# convert the object into a dict
license_ip_info_row_dict = license_ip_info_row_instance.to_dict()
# create an instance of LicenseIpInfoRow from a dict
license_ip_info_row_from_dict = LicenseIpInfoRow.from_dict(license_ip_info_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


