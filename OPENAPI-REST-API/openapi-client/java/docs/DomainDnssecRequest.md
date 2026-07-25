

# DomainDnssecRequest

Request payload for adding DNSSEC DS records to a domain.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**algorithm** | **List&lt;Integer&gt;** | List of DNSSEC algorithm IDs for each record. |  [optional] |
|**digestType** | **List&lt;Integer&gt;** | List of digest type IDs for each record. |  [optional] |
|**digest** | **List&lt;String&gt;** | List of hex digests for each record. |  [optional] |
|**keyTag** | **List&lt;Integer&gt;** | List of key tag values corresponding to each record. |  [optional] |


## Implemented Interfaces

* Serializable


