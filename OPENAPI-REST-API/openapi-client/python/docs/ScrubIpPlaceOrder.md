# ScrubIpPlaceOrder

Place ScrubIP Order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_type** | **int** |  | 
**ip** | **str** |  | 

## Example

```python
from interserver_api_client.models.scrub_ip_place_order import ScrubIpPlaceOrder

# TODO update the JSON string below
json = "{}"
# create an instance of ScrubIpPlaceOrder from a JSON string
scrub_ip_place_order_instance = ScrubIpPlaceOrder.from_json(json)
# print the JSON string representation of the object
print(ScrubIpPlaceOrder.to_json())

# convert the object into a dict
scrub_ip_place_order_dict = scrub_ip_place_order_instance.to_dict()
# create an instance of ScrubIpPlaceOrder from a dict
scrub_ip_place_order_from_dict = ScrubIpPlaceOrder.from_dict(scrub_ip_place_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


