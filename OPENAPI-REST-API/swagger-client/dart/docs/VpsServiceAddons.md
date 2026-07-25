# swagger.model.VpsServiceAddons

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hasCpanel** | **bool** | Whether a cPanel license is active on this VPS. | [optional] [default to null]
**hasDirectadmin** | **bool** | Whether a DirectAdmin license is active on this VPS. | [optional] [default to null]
**hasFantastico** | **bool** | Whether a Fantastico license is active on this VPS. | [optional] [default to null]
**hasSoftaculous** | **bool** | Whether a Softaculous license is active on this VPS. | [optional] [default to null]
**hasHdspace** | **bool** | Whether extra disk space has been added to this VPS. | [optional] [default to null]
**dedicatedIp** | **bool** | Whether a dedicated IP address is assigned to this VPS. | [optional] [default to null]
**extraIps** | **List&lt;String&gt;** | List of additional IPv4 addresses assigned to this VPS. | [optional] [default to []]
**extraIps6** | **List&lt;String&gt;** | List of additional IPv6 addresses assigned to this VPS. | [optional] [default to []]
**unpaidIps** | **List&lt;String&gt;** | List of IP addresses that have unpaid charges. | [optional] [default to []]
**ips** | **List&lt;String&gt;** | All IPv4 addresses assigned to this VPS. | [optional] [default to []]
**ips6** | **List&lt;String&gt;** | All IPv6 addresses assigned to this VPS. | [optional] [default to []]
**cpanelId** | **int** | The add-on service ID for the cPanel license. | [optional] [default to null]
**cost** | **int** | Total monthly add-on cost in cents. | [optional] [default to null]
**ids** | **List&lt;String&gt;** | List of add-on service IDs active on this VPS. | [optional] [default to []]
**rdata** | **List&lt;String&gt;** | Raw add-on data entries. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

