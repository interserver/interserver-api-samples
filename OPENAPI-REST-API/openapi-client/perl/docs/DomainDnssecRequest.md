# InterServerAPI::Object::DomainDnssecRequest

## Load the model package
```perl
use InterServerAPI::Object::DomainDnssecRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **ARRAY[int]** | List of DNSSEC algorithm IDs for each record. | [optional] 
**digest_type** | **ARRAY[int]** | List of digest type IDs for each record. | [optional] 
**digest** | **ARRAY[string]** | List of hex digests for each record. | [optional] 
**key_tag** | **ARRAY[int]** | List of key tag values corresponding to each record. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


