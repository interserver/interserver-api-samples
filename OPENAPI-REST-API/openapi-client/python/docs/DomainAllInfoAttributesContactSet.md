# DomainAllInfoAttributesContactSet


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner** | [**DomainOwnerContact**](DomainOwnerContact.md) |  | [optional] 
**admin** | [**DomainAdminContact**](DomainAdminContact.md) |  | [optional] 
**tech** | [**DomainTechContact**](DomainTechContact.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_all_info_attributes_contact_set import DomainAllInfoAttributesContactSet

# TODO update the JSON string below
json = "{}"
# create an instance of DomainAllInfoAttributesContactSet from a JSON string
domain_all_info_attributes_contact_set_instance = DomainAllInfoAttributesContactSet.from_json(json)
# print the JSON string representation of the object
print(DomainAllInfoAttributesContactSet.to_json())

# convert the object into a dict
domain_all_info_attributes_contact_set_dict = domain_all_info_attributes_contact_set_instance.to_dict()
# create an instance of DomainAllInfoAttributesContactSet from a dict
domain_all_info_attributes_contact_set_from_dict = DomainAllInfoAttributesContactSet.from_dict(domain_all_info_attributes_contact_set_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


