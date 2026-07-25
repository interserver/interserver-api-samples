# DomainSearchResponse

Lookup and suggestion results returned for a domain search.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** | Indicates whether the registrar search succeeded. | [optional] [default to undefined]
**response_text** | **string** | Human-readable status text from the registrar. | [optional] [default to undefined]
**response_time** | **string** | Response time as reported by the registrar. | [optional] [default to undefined]
**lookup** | **Array&lt;object&gt;** | Availability lookup results for queried domains. | [optional] [default to undefined]
**suggest** | **Array&lt;object&gt;** | Suggested alternative domains and availability data. | [optional] [default to undefined]
**tlds** | **Array&lt;string&gt;** | TLDs evaluated during the search. | [optional] [default to undefined]

## Example

```typescript
import { DomainSearchResponse } from '@interserver/myadmin-client';

const instance: DomainSearchResponse = {
    success,
    response_text,
    response_time,
    lookup,
    suggest,
    tlds,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
