# BuyItNowServerOrder200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bandwidth** | [**List[BuyItNowServerOrder200ResponseBandwidthInner]**](BuyItNowServerOrder200ResponseBandwidthInner.md) |  | [optional] 
**ips** | [**List[BuyItNowServerOrder200ResponseIpsInner]**](BuyItNowServerOrder200ResponseIpsInner.md) |  | [optional] 
**os** | [**List[BuyItNowServerOrder200ResponseOsInner]**](BuyItNowServerOrder200ResponseOsInner.md) |  | [optional] 
**cp** | [**List[BuyItNowServerOrder200ResponseCpInner]**](BuyItNowServerOrder200ResponseCpInner.md) |  | [optional] 
**raid** | [**List[BuyItNowServerOrder200ResponseRaidInner]**](BuyItNowServerOrder200ResponseRaidInner.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.buy_it_now_server_order200_response import BuyItNowServerOrder200Response

# TODO update the JSON string below
json = "{}"
# create an instance of BuyItNowServerOrder200Response from a JSON string
buy_it_now_server_order200_response_instance = BuyItNowServerOrder200Response.from_json(json)
# print the JSON string representation of the object
print(BuyItNowServerOrder200Response.to_json())

# convert the object into a dict
buy_it_now_server_order200_response_dict = buy_it_now_server_order200_response_instance.to_dict()
# create an instance of BuyItNowServerOrder200Response from a dict
buy_it_now_server_order200_response_from_dict = BuyItNowServerOrder200Response.from_dict(buy_it_now_server_order200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


