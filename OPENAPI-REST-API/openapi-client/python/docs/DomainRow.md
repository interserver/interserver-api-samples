# DomainRow

A result row from the `Domains` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_id** | **str** | The ID number of the domain in our billing system. | [optional] 
**domain_hostname** | **str** | The hostname of the domain. | [optional] 
**domain_expire_date** | **str** | The expiration date of the domain. | [optional] 
**cost** | **str** | The cost of the domain. | [optional] 
**domain_status** | **str** | The billing / registration status of the domain. | [optional] 

## Example

```python
from interserver_api_client.models.domain_row import DomainRow

# TODO update the JSON string below
json = "{}"
# create an instance of DomainRow from a JSON string
domain_row_instance = DomainRow.from_json(json)
# print the JSON string representation of the object
print(DomainRow.to_json())

# convert the object into a dict
domain_row_dict = domain_row_instance.to_dict()
# create an instance of DomainRow from a dict
domain_row_from_dict = DomainRow.from_dict(domain_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


