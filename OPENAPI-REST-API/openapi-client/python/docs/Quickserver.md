# Quickserver


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**QuickserverServiceInfo**](QuickserverServiceInfo.md) |  | 
**client_links** | [**List[QuickserverClientLink]**](QuickserverClientLink.md) |  | 
**billing_details** | [**QuickserverBillingDetails**](QuickserverBillingDetails.md) |  | 
**cust_currency** | **str** | Currency of the customer | 
**cust_currency_symbol** | **str** | Currency symbol of the customer | 
**service_master** | [**QuickserverServiceMaster**](QuickserverServiceMaster.md) |  | 
**package** | **str** | Package name | 
**os_template** | **str** | Operating system template | 
**service_extra** | [**QuickserverServiceExtra**](QuickserverServiceExtra.md) |  | 
**extra_info_tables** | [**QuickserverExtraInfoTables**](QuickserverExtraInfoTables.md) |  | 
**cpu_graph_data** | **str** | CPU graph data | 
**bandwidth_xaxis** | **str** | Bandwidth x-axis data | 
**bandwidth_yaxis** | **str** | Bandwidth y-axis data | 
**module** | **str** | Module information | 
**token** | **str** | Authentication token | 
**service_disk_used** | **str** | Used disk space | 
**service_disk_total** | **str** | Total disk space | 
**disk_percentage** | **float** | Disk usage percentage | 
**memory** | **str** | Memory information | 
**hdd** | **str** | HDD information | 
**service_overview_extra** | **List[str]** |  | 

## Example

```python
from interserver_api_client.models.quickserver import Quickserver

# TODO update the JSON string below
json = "{}"
# create an instance of Quickserver from a JSON string
quickserver_instance = Quickserver.from_json(json)
# print the JSON string representation of the object
print(Quickserver.to_json())

# convert the object into a dict
quickserver_dict = quickserver_instance.to_dict()
# create an instance of Quickserver from a dict
quickserver_from_dict = Quickserver.from_dict(quickserver_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


