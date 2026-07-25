# BuyItNowRow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | Option<**String**> | Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`. | [optional]
**cpu** | Option<[**Vec<models::BuyItNowRowCpuInner>**](BuyItNowRowCpuInner.md)> |  | [optional]
**memory** | Option<**String**> |  | [optional]
**disk** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**bandwidth** | Option<**String**> |  | [optional]
**ips** | Option<**String**> |  | [optional]
**location** | Option<**String**> |  | [optional]
**price** | Option<**i32**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


