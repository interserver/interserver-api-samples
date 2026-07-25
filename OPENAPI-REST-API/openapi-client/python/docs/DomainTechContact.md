# DomainTechContact

Technical contact information for a domain registration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**org_name** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**postal_code** | **str** |  | [optional] 
**fax** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**address2** | **str** |  | [optional] 
**address3** | **str** |  | [optional] 
**address1** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_tech_contact import DomainTechContact

# TODO update the JSON string below
json = "{}"
# create an instance of DomainTechContact from a JSON string
domain_tech_contact_instance = DomainTechContact.from_json(json)
# print the JSON string representation of the object
print(DomainTechContact.to_json())

# convert the object into a dict
domain_tech_contact_dict = domain_tech_contact_instance.to_dict()
# create an instance of DomainTechContact from a dict
domain_tech_contact_from_dict = DomainTechContact.from_dict(domain_tech_contact_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


