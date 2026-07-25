# interserver_api.model.VpsServiceAddons

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hasCpanel** | **Optional&lt;bool?&gt;** | Whether a cPanel license is active on this VPS. | [optional] 
**hasDirectadmin** | **Optional&lt;bool?&gt;** | Whether a DirectAdmin license is active on this VPS. | [optional] 
**hasFantastico** | **Optional&lt;bool?&gt;** | Whether a Fantastico license is active on this VPS. | [optional] 
**hasSoftaculous** | **Optional&lt;bool?&gt;** | Whether a Softaculous license is active on this VPS. | [optional] 
**hasHdspace** | **Optional&lt;bool?&gt;** | Whether extra disk space has been added to this VPS. | [optional] 
**dedicatedIp** | **Optional&lt;bool?&gt;** | Whether a dedicated IP address is assigned to this VPS. | [optional] 
**extraIps** | **Optional&lt;List&lt;String&gt;?&gt;** | List of additional IPv4 addresses assigned to this VPS. | [optional] 
**extraIps6** | **Optional&lt;List&lt;String&gt;?&gt;** | List of additional IPv6 addresses assigned to this VPS. | [optional] 
**unpaidIps** | **Optional&lt;List&lt;String&gt;?&gt;** | List of IP addresses that have unpaid charges. | [optional] 
**ips** | **Optional&lt;List&lt;String&gt;?&gt;** | All IPv4 addresses assigned to this VPS. | [optional] 
**ips6** | **Optional&lt;List&lt;String&gt;?&gt;** | All IPv6 addresses assigned to this VPS. | [optional] 
**cpanelId** | **Optional&lt;int?&gt;** | The add-on service ID for the cPanel license. | [optional] 
**cost** | **Optional&lt;int?&gt;** | Total monthly add-on cost in cents. | [optional] 
**ids** | **Optional&lt;List&lt;String&gt;?&gt;** | List of add-on service IDs active on this VPS. | [optional] 
**rdata** | **Optional&lt;List&lt;String&gt;?&gt;** | Raw add-on data entries. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


