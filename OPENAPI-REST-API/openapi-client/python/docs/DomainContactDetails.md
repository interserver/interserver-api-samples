# DomainContactDetails

Contact details used for domain registrant/admin/technical/billing records.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | Contact status reported by the registrar. | [optional] 
**state** | **str** | State or region for the contact address. | [optional] 
**org_name** | **str** | Organization name for the contact. | [optional] 
**country** | **str** | Two-letter country code for the contact. | [optional] 
**postal_code** | **str** | Postal or ZIP code for the contact address. | [optional] 
**email** | **str** | Email address for the contact. | [optional] 
**fax** | **str** | Fax number for the contact, if available. | [optional] 
**address2** | **str** | Secondary street address line. | [optional] 
**address3** | **str** | Tertiary street address line. | [optional] 
**address1** | **str** | Primary street address line. | [optional] 
**city** | **str** | City for the contact address. | [optional] 
**phone** | **str** | Phone number for the contact. | [optional] 
**first_name** | **str** | First name for the contact. | [optional] 
**last_name** | **str** | Last name for the contact. | [optional] 

## Example

```python
from interserver_api_client.models.domain_contact_details import DomainContactDetails

# TODO update the JSON string below
json = "{}"
# create an instance of DomainContactDetails from a JSON string
domain_contact_details_instance = DomainContactDetails.from_json(json)
# print the JSON string representation of the object
print(DomainContactDetails.to_json())

# convert the object into a dict
domain_contact_details_dict = domain_contact_details_instance.to_dict()
# create an instance of DomainContactDetails from a dict
domain_contact_details_from_dict = DomainContactDetails.from_dict(domain_contact_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


