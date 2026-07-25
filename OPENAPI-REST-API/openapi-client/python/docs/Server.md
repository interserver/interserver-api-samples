# Server


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ipmi_auth** | **bool** |  | 
**client_links** | [**List[ServerClientLink]**](ServerClientLink.md) |  | 
**billing_details** | [**ServerBillingDetails**](ServerBillingDetails.md) |  | 
**cust_currency** | **str** |  | 
**cust_currency_symbol** | **str** |  | 
**package** | **str** |  | 
**service_extra** | **List[str]** |  | 
**locations** | [**ServerLocations**](ServerLocations.md) |  | 
**network_info** | [**ServerNetworkInfo**](ServerNetworkInfo.md) |  | 
**extra_info_tables** | [**ServerExtraInfoTables**](ServerExtraInfoTables.md) |  | 
**service_info** | [**ServerServiceInfo**](ServerServiceInfo.md) |  | 

## Example

```python
from interserver_api_client.models.server import Server

# TODO update the JSON string below
json = "{}"
# create an instance of Server from a JSON string
server_instance = Server.from_json(json)
# print the JSON string representation of the object
print(Server.to_json())

# convert the object into a dict
server_dict = server_instance.to_dict()
# create an instance of Server from a dict
server_from_dict = Server.from_dict(server_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


