# ReverseDnsEntries

The Reverse DNS entries.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ips** | **Dict[str, object]** | The IPs you have access to and their current reverse dns mapping. | [optional] 

## Example

```python
from interserver_api_client.models.reverse_dns_entries import ReverseDnsEntries

# TODO update the JSON string below
json = "{}"
# create an instance of ReverseDnsEntries from a JSON string
reverse_dns_entries_instance = ReverseDnsEntries.from_json(json)
# print the JSON string representation of the object
print(ReverseDnsEntries.to_json())

# convert the object into a dict
reverse_dns_entries_dict = reverse_dns_entries_instance.to_dict()
# create an instance of ReverseDnsEntries from a dict
reverse_dns_entries_from_dict = ReverseDnsEntries.from_dict(reverse_dns_entries_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


