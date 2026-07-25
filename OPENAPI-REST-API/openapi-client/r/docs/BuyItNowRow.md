# interserverapi::BuyItNowRow

A buy-it-now dedicated server listing from the marketplace, with hardware specs and pricing.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **character** | Unique server ID. Use this as &#x60;server_id&#x60; in &#x60;POST /servers/order/buy_now_server&#x60;. | [optional] 
**cpu** | [**array[BuyItNowRowCpuInner]**](BuyItNowRow_cpu_inner.md) |  | [optional] 
**memory** | **character** |  | [optional] 
**disk** | **map(character)** |  | [optional] 
**bandwidth** | **character** |  | [optional] 
**ips** | **character** |  | [optional] 
**location** | **character** |  | [optional] 
**price** | **integer** |  | [optional] 


