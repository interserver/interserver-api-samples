# DomainSearchResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`success`** | **`Bool`** | Indicates whether the registrar search succeeded. | [optional] [default to nothing]
**`response_text`** | **`String`** | Human-readable status text from the registrar. | [optional] [default to nothing]
**`response_time`** | **`String`** | Response time as reported by the registrar. | [optional] [default to nothing]
**`lookup`** | **`Vector{Any}`** | Availability lookup results for queried domains. | [optional] [default to nothing]
**`suggest`** | **`Vector{Any}`** | Suggested alternative domains and availability data. | [optional] [default to nothing]
**`tlds`** | **`Vector{String}`** | TLDs evaluated during the search. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


