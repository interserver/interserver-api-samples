# interserver_api.model.VpsServiceAddons

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hasCpanel** | **bool** | Whether a cPanel license is active on this VPS. | [optional] 
**hasDirectadmin** | **bool** | Whether a DirectAdmin license is active on this VPS. | [optional] 
**hasFantastico** | **bool** | Whether a Fantastico license is active on this VPS. | [optional] 
**hasSoftaculous** | **bool** | Whether a Softaculous license is active on this VPS. | [optional] 
**hasHdspace** | **bool** | Whether extra disk space has been added to this VPS. | [optional] 
**dedicatedIp** | **bool** | Whether a dedicated IP address is assigned to this VPS. | [optional] 
**extraIps** | **List<String>** | List of additional IPv4 addresses assigned to this VPS. | [optional] [default to const []]
**extraIps6** | **List<String>** | List of additional IPv6 addresses assigned to this VPS. | [optional] [default to const []]
**unpaidIps** | **List<String>** | List of IP addresses that have unpaid charges. | [optional] [default to const []]
**ips** | **List<String>** | All IPv4 addresses assigned to this VPS. | [optional] [default to const []]
**ips6** | **List<String>** | All IPv6 addresses assigned to this VPS. | [optional] [default to const []]
**cpanelId** | **int** | The add-on service ID for the cPanel license. | [optional] 
**cost** | **int** | Total monthly add-on cost in cents. | [optional] 
**ids** | **List<String>** | List of add-on service IDs active on this VPS. | [optional] [default to const []]
**rdata** | **List<String>** | Raw add-on data entries. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


