# DomainSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | Option<**bool**> | Indicates whether the registrar search succeeded. | [optional]
**response_text** | Option<**String**> | Human-readable status text from the registrar. | [optional]
**response_time** | Option<**String**> | Response time as reported by the registrar. | [optional]
**lookup** | Option<**Vec<serde_json::Value>**> | Availability lookup results for queried domains. | [optional]
**suggest** | Option<**Vec<serde_json::Value>**> | Suggested alternative domains and availability data. | [optional]
**tlds** | Option<**Vec<String>**> | TLDs evaluated during the search. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


