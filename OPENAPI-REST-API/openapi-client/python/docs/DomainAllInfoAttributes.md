# DomainAllInfoAttributes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_set** | [**DomainAllInfoAttributesContactSet**](DomainAllInfoAttributesContactSet.md) |  | [optional] 
**registry_createdate** | **str** |  | [optional] 
**registry_expiredate** | **str** |  | [optional] 
**tld_data** | **str** |  | [optional] 
**let_expire** | **str** |  | [optional] 
**auto_renew** | **str** |  | [optional] 
**sponsoring_rsp** | **str** |  | [optional] 
**gdpr_consent_status** | **str** |  | [optional] 
**nameserver_list** | [**List[DomainNameServer]**](DomainNameServer.md) |  | [optional] 
**registry_updatedate** | **str** |  | [optional] 
**affiliate_id** | **str** |  | [optional] 
**expiredate** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_all_info_attributes import DomainAllInfoAttributes

# TODO update the JSON string below
json = "{}"
# create an instance of DomainAllInfoAttributes from a JSON string
domain_all_info_attributes_instance = DomainAllInfoAttributes.from_json(json)
# print the JSON string representation of the object
print(DomainAllInfoAttributes.to_json())

# convert the object into a dict
domain_all_info_attributes_dict = domain_all_info_attributes_instance.to_dict()
# create an instance of DomainAllInfoAttributes from a dict
domain_all_info_attributes_from_dict = DomainAllInfoAttributes.from_dict(domain_all_info_attributes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


