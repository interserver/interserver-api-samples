# interserverapi::DomainDnssecRequest

Request payload for adding DNSSEC DS records to a domain.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **array[integer]** | List of DNSSEC algorithm IDs for each record. | [optional] 
**digest_type** | **array[integer]** | List of digest type IDs for each record. | [optional] 
**digest** | **array[character]** | List of hex digests for each record. | [optional] 
**key_tag** | **array[integer]** | List of key tag values corresponding to each record. | [optional] 


