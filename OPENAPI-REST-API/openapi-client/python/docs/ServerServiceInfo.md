# ServerServiceInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **str** | The ID of the server. | [optional] 
**server_hostname** | **str** | The hostname of the server. | [optional] 
**server_custid** | **str** | The customer ID associated with the server. | [optional] 
**server_type** | **str** | The type of the server. | [optional] 
**server_currency** | **str** | The currency used for billing. | [optional] 
**server_order_date** | **str** | The date when the server was ordered. | [optional] 
**server_invoice** | **str** | The invoice number for the server. | [optional] 
**server_coupon** | **str** | The coupon associated with the server. | [optional] 
**server_status** | **str** | The status of the server. | [optional] 
**server_root** | **str** | The root of the server. | [optional] 
**server_dedicated_tag** | **str** | The dedicated tag of the server. | [optional] 
**server_custom_tag** | **str** | The custom tag of the server. | [optional] 
**server_comment** | **str** | Comments related to the server. | [optional] 
**server_initial_bill** | **str** | The initial billing amount for the server. | [optional] 
**server_hardware** | **str** | The hardware information of the server. | [optional] 
**server_ips** | **str** | The number of IPs associated with the server. | [optional] 
**server_monthly_bill** | **str** | The monthly billing amount for the server. | [optional] 
**server_setup** | **str** | The setup status of the server. | [optional] 
**server_discount** | **str** | Discount information for the server. | [optional] 
**server_rep** | **str** | The reputation of the server. | [optional] 
**server_date** | **str** | The date related to the server. | [optional] 
**server_total_cost** | **str** | The total cost of the server. | [optional] 
**server_location** | **str** | The location of the server. | [optional] 
**server_hardware_ordered** | **str** | The ordered hardware for the server. | [optional] 
**server_billed** | **str** | The billed amount for the server. | [optional] 
**server_welcome_email** | **str** | Indicates whether a welcome email was sent. | [optional] 
**server_dedicated_cpu** | **str** | The number of dedicated CPUs for the server. | [optional] 
**server_dedicated_memory** | **str** | The amount of dedicated memory for the server. | [optional] 
**server_dedicated_hd1** | **str** | The size of the first dedicated hard drive. | [optional] 
**server_dedicated_hd2** | **str** | The size of the second dedicated hard drive. | [optional] 
**server_dedicated_bandwidth** | **str** | The bandwidth of the server. | [optional] 
**server_dedicated_ips** | **str** | The number of dedicated IPs for the server. | [optional] 
**server_dedicated_os** | **str** | The operating system of the server. | [optional] 
**server_dedicated_cp** | **str** | The control panel of the server. | [optional] 
**server_dedicated_raid** | **str** | The RAID configuration of the server. | [optional] 
**server_extra** | **str** | Additional information about the server. | [optional] 

## Example

```python
from interserver_api_client.models.server_service_info import ServerServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ServerServiceInfo from a JSON string
server_service_info_instance = ServerServiceInfo.from_json(json)
# print the JSON string representation of the object
print(ServerServiceInfo.to_json())

# convert the object into a dict
server_service_info_dict = server_service_info_instance.to_dict()
# create an instance of ServerServiceInfo from a dict
server_service_info_from_dict = ServerServiceInfo.from_dict(server_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


