# DomainOwnerContact

Contact details for the registered domain owner.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**postal_code** | **str** |  | [optional] 
**org_name** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 
**address3** | **str** |  | [optional] 
**fax** | **str** |  | [optional] 
**address2** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 
**address1** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_owner_contact import DomainOwnerContact

# TODO update the JSON string below
json = "{}"
# create an instance of DomainOwnerContact from a JSON string
domain_owner_contact_instance = DomainOwnerContact.from_json(json)
# print the JSON string representation of the object
print(DomainOwnerContact.to_json())

# convert the object into a dict
domain_owner_contact_dict = domain_owner_contact_instance.to_dict()
# create an instance of DomainOwnerContact from a dict
domain_owner_contact_from_dict = DomainOwnerContact.from_dict(domain_owner_contact_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


