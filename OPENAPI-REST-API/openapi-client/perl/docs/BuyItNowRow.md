# InterServerAPI::Object::BuyItNowRow

## Load the model package
```perl
use InterServerAPI::Object::BuyItNowRow;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **string** | Unique server ID. Use this as &#x60;server_id&#x60; in &#x60;POST /servers/order/buy_now_server&#x60;. | [optional] 
**cpu** | [**ARRAY[BuyItNowRowCpuInner]**](BuyItNowRowCpuInner.md) |  | [optional] 
**memory** | **string** |  | [optional] 
**disk** | **HASH[string,string]** |  | [optional] 
**bandwidth** | **string** |  | [optional] 
**ips** | **string** |  | [optional] 
**location** | **string** |  | [optional] 
**price** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


