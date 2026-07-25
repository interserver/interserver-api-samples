# FloatingIpOrderRequest

Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_type** | **int** | Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). | 
**coupon** | **str** | Coupon code. | [optional] [default to '']
**comment** | **str** | Free-form note saved on the service row (used on addFloatingIp). | [optional] [default to '']

## Example

```python
from interserver_api_client.models.floating_ip_order_request import FloatingIpOrderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FloatingIpOrderRequest from a JSON string
floating_ip_order_request_instance = FloatingIpOrderRequest.from_json(json)
# print the JSON string representation of the object
print(FloatingIpOrderRequest.to_json())

# convert the object into a dict
floating_ip_order_request_dict = floating_ip_order_request_instance.to_dict()
# create an instance of FloatingIpOrderRequest from a dict
floating_ip_order_request_from_dict = FloatingIpOrderRequest.from_dict(floating_ip_order_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


