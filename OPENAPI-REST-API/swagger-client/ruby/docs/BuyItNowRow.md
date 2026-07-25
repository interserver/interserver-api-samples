# InterserverApiClient::BuyItNowRow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **String** | Unique server ID. Use this as &#x60;server_id&#x60; in &#x60;POST /servers/order/buy_now_server&#x60;. | [optional] 
**cpu** | [**Array&lt;OneOfBuyItNowRowCpuItems&gt;**](.md) |  | [optional] 
**memory** | **String** |  | [optional] 
**disk** | **Hash&lt;String, String&gt;** |  | [optional] 
**bandwidth** | **String** |  | [optional] 
**ips** | **String** |  | [optional] 
**location** | **String** |  | [optional] 
**price** | **Integer** |  | [optional] 

