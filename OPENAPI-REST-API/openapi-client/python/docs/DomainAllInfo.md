# DomainAllInfo

Complete domain registration information returned from the registrar, including contacts, nameservers, and expiry dates.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ops_version** | **str** |  | [optional] 
**attributes** | [**DomainAllInfoAttributes**](DomainAllInfoAttributes.md) |  | [optional] 
**object** | **str** |  | [optional] 
**protocol** | **str** |  | [optional] 
**response_text** | **str** |  | [optional] 
**response_code** | **str** |  | [optional] 
**action** | **str** |  | [optional] 
**is_success** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_all_info import DomainAllInfo

# TODO update the JSON string below
json = "{}"
# create an instance of DomainAllInfo from a JSON string
domain_all_info_instance = DomainAllInfo.from_json(json)
# print the JSON string representation of the object
print(DomainAllInfo.to_json())

# convert the object into a dict
domain_all_info_dict = domain_all_info_instance.to_dict()
# create an instance of DomainAllInfo from a dict
domain_all_info_from_dict = DomainAllInfo.from_dict(domain_all_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


