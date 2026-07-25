# Website

Full detail view of a webhosting service including billing, service configuration, and panel access links.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**WebsiteServiceInfo**](WebsiteServiceInfo.md) |  | [optional] 
**client_links** | [**List[WebsiteClientLink]**](WebsiteClientLink.md) |  | [optional] 
**billing_details** | [**WebsiteBillingDetails**](WebsiteBillingDetails.md) |  | [optional] 
**cust_currency** | **str** | Customer&#39;s currency | [optional] 
**cust_currency_symbol** | **str** | Customer currency symbol | [optional] 
**service_master** | [**WebsiteServiceMaster**](WebsiteServiceMaster.md) |  | [optional] 
**package** | **str** | Package information | [optional] 
**service_extra** | **List[object]** |  | [optional] 
**extra_info_tables** | [**WebsiteExtraInfoTables**](WebsiteExtraInfoTables.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.website import Website

# TODO update the JSON string below
json = "{}"
# create an instance of Website from a JSON string
website_instance = Website.from_json(json)
# print the JSON string representation of the object
print(Website.to_json())

# convert the object into a dict
website_dict = website_instance.to_dict()
# create an instance of Website from a dict
website_from_dict = Website.from_dict(website_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


