

# DomainSearchResponse

Lookup and suggestion results returned for a domain search.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**success** | **Boolean** | Indicates whether the registrar search succeeded. |  [optional] |
|**responseText** | **String** | Human-readable status text from the registrar. |  [optional] |
|**responseTime** | **String** | Response time as reported by the registrar. |  [optional] |
|**lookup** | **List&lt;Object&gt;** | Availability lookup results for queried domains. |  [optional] |
|**suggest** | **List&lt;Object&gt;** | Suggested alternative domains and availability data. |  [optional] |
|**tlds** | **List&lt;String&gt;** | TLDs evaluated during the search. |  [optional] |


## Implemented Interfaces

* Serializable


