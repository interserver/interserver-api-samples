# WebsiteServiceInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**website_id** | **str** | Website ID | [optional] 
**website_server** | **str** | Website server | [optional] 
**website_type** | **str** | Website type | [optional] 
**website_currency** | **str** | Currency of the website | [optional] 
**website_order_date** | **str** | Order date of the website | [optional] 
**website_custid** | **str** | Customer ID of the website | [optional] 
**website_ip** | **str** | IP address of the website | [optional] 
**website_status** | **str** | Status of the website | [optional] 
**website_invoice** | **str** | Invoice of the website | [optional] 
**website_coupon** | **str** | Coupon for the website | [optional] 
**website_extra** | **str** | Extra information in JSON format for the website | [optional] 
**website_hostname** | **str** | Hostname of the website | [optional] 
**website_comment** | **str** | Comment for the website | [optional] 
**website_username** | **str** | Username for the website | [optional] 
**website_server_status** | **str** | Server status of the website | [optional] 

## Example

```python
from interserver_api_client.models.website_service_info import WebsiteServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteServiceInfo from a JSON string
website_service_info_instance = WebsiteServiceInfo.from_json(json)
# print the JSON string representation of the object
print(WebsiteServiceInfo.to_json())

# convert the object into a dict
website_service_info_dict = website_service_info_instance.to_dict()
# create an instance of WebsiteServiceInfo from a dict
website_service_info_from_dict = WebsiteServiceInfo.from_dict(website_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


