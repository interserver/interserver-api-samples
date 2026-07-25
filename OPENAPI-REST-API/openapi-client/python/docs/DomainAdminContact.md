# DomainAdminContact

Administrative contact information for a domain registration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**org_name** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**postal_code** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**fax** | **str** |  | [optional] 
**address2** | **str** |  | [optional] 
**address3** | **str** |  | [optional] 
**address1** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_admin_contact import DomainAdminContact

# TODO update the JSON string below
json = "{}"
# create an instance of DomainAdminContact from a JSON string
domain_admin_contact_instance = DomainAdminContact.from_json(json)
# print the JSON string representation of the object
print(DomainAdminContact.to_json())

# convert the object into a dict
domain_admin_contact_dict = domain_admin_contact_instance.to_dict()
# create an instance of DomainAdminContact from a dict
domain_admin_contact_from_dict = DomainAdminContact.from_dict(domain_admin_contact_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


