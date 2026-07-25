# License


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**LicenseServiceInfo**](LicenseServiceInfo.md) |  | 
**client_links** | [**List[LicenseClientLink]**](LicenseClientLink.md) |  | 
**billing_details** | [**LicenseBillingDetails**](LicenseBillingDetails.md) |  | 
**cust_currency** | **str** | Customer&#39;s currency | 
**cust_currency_symbol** | **str** | Currency symbol for customer | 
**package** | **str** | Package name | 
**service_extra** | **List[str]** | Extra service information | 
**extra_info_tables** | [**LicenseExtraInfoTables**](LicenseExtraInfoTables.md) |  | 
**service_overview_extra** | **str** | Extra service overview information | 
**service_type** | [**LicenseServiceType**](LicenseServiceType.md) |  | 
**license_key** | **str** | License key | 

## Example

```python
from interserver_api_client.models.license import License

# TODO update the JSON string below
json = "{}"
# create an instance of License from a JSON string
license_instance = License.from_json(json)
# print the JSON string representation of the object
print(License.to_json())

# convert the object into a dict
license_dict = license_instance.to_dict()
# create an instance of License from a dict
license_from_dict = License.from_dict(license_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


