# interserver_api.model.CreateGeoFirewallRule

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**xdpAction** | **int** | 1 = Block,  0 = Whitelist | 
**destinationPort** | **Optional&lt;int?&gt;** |  | [optional] [default to 80]
**countryCode** | **Optional&lt;int?&gt;** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode | [optional] 
**asn** | **Optional&lt;int?&gt;** | ASN number | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


