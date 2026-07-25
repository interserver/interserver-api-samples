# LicenseRow

A result row from the `Licenses` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**license_id** | **str** | The id of the license. | [optional] 
**license_hostname** | **str** | The hostname of the license. | [optional] 
**license_ip** | **str** | The ip of the license. | [optional] 
**services_name** | **str** | The services name of the license. | [optional] 
**cost** | **str** | The cost of the license. | [optional] 
**license_status** | **str** | The status of the license. | [optional] 
**invoices_paid** | **str** | The invoices paid of the license. | [optional] 
**invoices_date** | **datetime** | The invoices date of the license. | [optional] 

## Example

```python
from interserver_api_client.models.license_row import LicenseRow

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseRow from a JSON string
license_row_instance = LicenseRow.from_json(json)
# print the JSON string representation of the object
print(LicenseRow.to_json())

# convert the object into a dict
license_row_dict = license_row_instance.to_dict()
# create an instance of LicenseRow from a dict
license_row_from_dict = LicenseRow.from_dict(license_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


