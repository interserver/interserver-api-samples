# Domain

Full detail view of a domain service including billing, contacts, DNS, and configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**DomainServiceInfo**](DomainServiceInfo.md) |  | [optional] 
**service_types** | [**Dict[str, DomainServiceType]**](DomainServiceType.md) |  | [optional] 
**client_links** | [**List[DomainClientLink]**](DomainClientLink.md) |  | [optional] 
**billing_details** | [**DomainBillingDetails**](DomainBillingDetails.md) |  | [optional] 
**cust_currency** | **str** |  | [optional] 
**cust_currency_symbol** | **str** |  | [optional] 
**service_extra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**extra_info_tables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] 
**service_type** | [**DomainServiceType**](DomainServiceType.md) |  | [optional] 
**contact_details** | [**DomainContactDetails**](DomainContactDetails.md) |  | [optional] 
**pwarning** | **str** |  | [optional] 
**transfer_info** | **str** |  | [optional] 
**errors** | **bool** |  | [optional] 
**domain_logs** | **List[str]** |  | [optional] 
**all_info** | [**DomainAllInfo**](DomainAllInfo.md) |  | [optional] 
**registrar_status** | **str** |  | [optional] 
**locked** | **str** |  | [optional] 
**whois_privacy** | **str** |  | [optional] 
**auto_renew** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain import Domain

# TODO update the JSON string below
json = "{}"
# create an instance of Domain from a JSON string
domain_instance = Domain.from_json(json)
# print the JSON string representation of the object
print(Domain.to_json())

# convert the object into a dict
domain_dict = domain_instance.to_dict()
# create an instance of Domain from a dict
domain_from_dict = Domain.from_dict(domain_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


