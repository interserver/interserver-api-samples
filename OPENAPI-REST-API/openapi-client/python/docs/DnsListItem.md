# DnsListItem

A DNS zone entry with its ID, domain name, and record content.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**content** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.dns_list_item import DnsListItem

# TODO update the JSON string below
json = "{}"
# create an instance of DnsListItem from a JSON string
dns_list_item_instance = DnsListItem.from_json(json)
# print the JSON string representation of the object
print(DnsListItem.to_json())

# convert the object into a dict
dns_list_item_dict = dns_list_item_instance.to_dict()
# create an instance of DnsListItem from a dict
dns_list_item_from_dict = DnsListItem.from_dict(dns_list_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


