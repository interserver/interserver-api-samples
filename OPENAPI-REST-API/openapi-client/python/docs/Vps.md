# Vps


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**VpsServiceInfo**](VpsServiceInfo.md) |  | 
**client_links** | [**List[VpsClientLink]**](VpsClientLink.md) |  | 
**billing_details** | [**VpsBillingDetails**](VpsBillingDetails.md) |  | 
**cust_currency** | **str** |  | 
**cust_currency_symbol** | **str** |  | 
**service_master** | [**VpsServiceMaster**](VpsServiceMaster.md) |  | 
**package** | **str** |  | 
**os_template** | **str** |  | [optional] 
**service_extra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  | 
**extra_info_tables** | [**VpsExtraInfoTables**](VpsExtraInfoTables.md) |  | 
**cpu_graph_data** | **object** |  | [optional] 
**module** | **str** |  | 
**token** | **str** |  | 
**da_link** | **int** |  | 
**sr_link** | **int** |  | 
**cp_data** | [**VpsCPData**](VpsCPData.md) |  | 
**da_data** | [**VpsDAData**](VpsDAData.md) |  | 
**plesk12_data** | [**VpsPlesk12Data**](VpsPlesk12Data.md) |  | 
**service_addons** | [**VpsServiceAddons**](VpsServiceAddons.md) |  | 

## Example

```python
from interserver_api_client.models.vps import Vps

# TODO update the JSON string below
json = "{}"
# create an instance of Vps from a JSON string
vps_instance = Vps.from_json(json)
# print the JSON string representation of the object
print(Vps.to_json())

# convert the object into a dict
vps_dict = vps_instance.to_dict()
# create an instance of Vps from a dict
vps_from_dict = Vps.from_dict(vps_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


