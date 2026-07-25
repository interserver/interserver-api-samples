# WebsiteServiceMaster


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**website_id** | **str** | Website ID for the service master | [optional] 
**website_name** | **str** | Website name for the service master | [optional] 
**website_ip** | **str** | IP address for the service master | [optional] 
**website_type** | **str** | Website type for the service master | [optional] 
**website_available** | **str** | Availability status for the service master | [optional] 
**website_hdsize** | **str** | Hard drive size for the service master | [optional] 
**website_hdfree** | **str** | Free hard drive space for the service master | [optional] 
**website_load** | **str** | Load for the service master | [optional] 
**website_last_update** | **str** | Last update date for the service master | [optional] 
**website_max_sites** | **str** | Maximum number of sites for the service master | [optional] 
**website_order** | **str** | Order number for the service master | [optional] 
**website_partitions** | **str** | Partitions for the service master | [optional] 
**website_dns1** | **str** | DNS server 1 for the service master | [optional] 
**website_dns2** | **str** | DNS server 2 for the service master | [optional] 

## Example

```python
from interserver_api_client.models.website_service_master import WebsiteServiceMaster

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteServiceMaster from a JSON string
website_service_master_instance = WebsiteServiceMaster.from_json(json)
# print the JSON string representation of the object
print(WebsiteServiceMaster.to_json())

# convert the object into a dict
website_service_master_dict = website_service_master_instance.to_dict()
# create an instance of WebsiteServiceMaster from a dict
website_service_master_from_dict = WebsiteServiceMaster.from_dict(website_service_master_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


