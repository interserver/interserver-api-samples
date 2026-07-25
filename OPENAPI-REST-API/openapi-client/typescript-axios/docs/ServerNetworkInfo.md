# ServerNetworkInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vlans** | **Array&lt;string&gt;** | List of VLANs. | [default to undefined]
**vlans6** | **Array&lt;string&gt;** | List of IPv6 VLANs. | [default to undefined]
**assets** | [**ServerNetworkInfoAssets**](ServerNetworkInfoAssets.md) |  | [default to undefined]
**switchports** | [**ServerNetworkInfoSwitchports**](ServerNetworkInfoSwitchports.md) |  | [default to undefined]

## Example

```typescript
import { ServerNetworkInfo } from '@interserver/myadmin-client';

const instance: ServerNetworkInfo = {
    vlans,
    vlans6,
    assets,
    switchports,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
