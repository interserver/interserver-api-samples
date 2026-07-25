# ServerLease


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mac** | **str** | MAC address associated with the lease. | 
**authenticated** | **bool** | Indicates if the lease is authenticated. | 
**group** | **str** | Group identifier for the lease. | 

## Example

```python
from interserver_api_client.models.server_lease import ServerLease

# TODO update the JSON string below
json = "{}"
# create an instance of ServerLease from a JSON string
server_lease_instance = ServerLease.from_json(json)
# print the JSON string representation of the object
print(ServerLease.to_json())

# convert the object into a dict
server_lease_dict = server_lease_instance.to_dict()
# create an instance of ServerLease from a dict
server_lease_from_dict = ServerLease.from_dict(server_lease_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


