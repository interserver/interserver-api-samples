# BuyItNowRow

A buy-it-now dedicated server listing from the marketplace, with hardware specs and pricing.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **str** | Unique server ID. Use this as &#x60;server_id&#x60; in &#x60;POST /servers/order/buy_now_server&#x60;. | [optional] 
**cpu** | [**List[BuyItNowRowCpuInner]**](BuyItNowRowCpuInner.md) |  | [optional] 
**memory** | **str** |  | [optional] 
**disk** | **Dict[str, str]** |  | [optional] 
**bandwidth** | **str** |  | [optional] 
**ips** | **str** |  | [optional] 
**location** | **str** |  | [optional] 
**price** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.buy_it_now_row import BuyItNowRow

# TODO update the JSON string below
json = "{}"
# create an instance of BuyItNowRow from a JSON string
buy_it_now_row_instance = BuyItNowRow.from_json(json)
# print the JSON string representation of the object
print(BuyItNowRow.to_json())

# convert the object into a dict
buy_it_now_row_dict = buy_it_now_row_instance.to_dict()
# create an instance of BuyItNowRow from a dict
buy_it_now_row_from_dict = BuyItNowRow.from_dict(buy_it_now_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


