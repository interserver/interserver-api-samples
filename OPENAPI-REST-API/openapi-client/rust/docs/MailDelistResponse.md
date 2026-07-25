# MailDelistResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**i32**> | Mail service ID. | [optional]
**local** | Option<**Vec<serde_json::Value>**> | Local blocklist entries. | [optional]
**mbtrap** | Option<**Vec<serde_json::Value>**> | MailBaby trap block entries. | [optional]
**subject** | Option<**Vec<serde_json::Value>**> | Subject-based block entries. | [optional]
**manual** | Option<**Vec<serde_json::Value>**> | Manually blocked entries. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


