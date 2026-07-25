# VpsOrderPostRequest

request to validate a vps order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**os_distro** | **str** | OS Distribution | 
**slices** | **int** | Number of slices | [default to 1]
**vps_platform** | **str** | VPS Platform | 
**period** | **int** | Billing Period or Frequency | [default to 1]
**location** | **int** | Location | [default to 1]
**os_version** | **str** | OS Version | 
**hostname** | **str** | The hostname to assign to the VPS | [default to '']
**rootpass** | **str** | Root password to assign to the VVPS | 
**controlpanel** | **str** | Control Panel | [optional] 
**coupon** | **str** | Coupon | [optional] [default to '']
**comment** | **str** | Order comments or notes | [optional] [default to '']

## Example

```python
from interserver_api_client.models.vps_order_post_request import VpsOrderPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrderPostRequest from a JSON string
vps_order_post_request_instance = VpsOrderPostRequest.from_json(json)
# print the JSON string representation of the object
print(VpsOrderPostRequest.to_json())

# convert the object into a dict
vps_order_post_request_dict = vps_order_post_request_instance.to_dict()
# create an instance of VpsOrderPostRequest from a dict
vps_order_post_request_from_dict = VpsOrderPostRequest.from_dict(vps_order_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


