# QuickserverServiceInfo

Core service record for a QuickServer including ID, status, IP, OS, and billing details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qs_id** | **string** | Quickserver ID | [optional] [default to undefined]
**qs_custid** | **string** | Customer ID | [optional] [default to undefined]
**qs_server** | **string** | Server information | [optional] [default to undefined]
**qs_ip** | **string** | IP address | [optional] [default to undefined]
**qs_ipv6** | **string** | IPv6 address (null) | [optional] [default to undefined]
**qs_vzid** | **string** | VZ ID | [optional] [default to undefined]
**qs_currency** | **string** | Currency | [optional] [default to undefined]
**qs_type** | **string** | Type | [optional] [default to undefined]
**qs_order_date** | **string** | Order date | [optional] [default to undefined]
**qs_status** | **string** | Status | [optional] [default to undefined]
**qs_invoice** | **string** | Invoice number | [optional] [default to undefined]
**qs_coupon** | **string** | Coupon information | [optional] [default to undefined]
**qs_extra** | **string** | Extra information | [optional] [default to undefined]
**qs_hostname** | **string** | Hostname | [optional] [default to undefined]
**qs_server_status** | **string** | Server status | [optional] [default to undefined]
**qs_comment** | **string** | Comment | [optional] [default to undefined]
**qs_slices** | **string** | Slices information | [optional] [default to undefined]
**qs_vnc** | **string** | VNC information | [optional] [default to undefined]
**qs_vnc_port** | **number** | VNC port (null) | [optional] [default to undefined]
**qs_rootpass** | **string** | Root password | [optional] [default to undefined]
**qs_mac** | **string** | MAC address | [optional] [default to undefined]
**qs_os** | **string** | Operating system | [optional] [default to undefined]
**qs_version** | **string** | OS version | [optional] [default to undefined]
**qs_location** | **string** | Location | [optional] [default to undefined]
**qs_platform** | **string** | Platform (null) | [optional] [default to undefined]

## Example

```typescript
import { QuickserverServiceInfo } from '@interserver/myadmin-client';

const instance: QuickserverServiceInfo = {
    qs_id,
    qs_custid,
    qs_server,
    qs_ip,
    qs_ipv6,
    qs_vzid,
    qs_currency,
    qs_type,
    qs_order_date,
    qs_status,
    qs_invoice,
    qs_coupon,
    qs_extra,
    qs_hostname,
    qs_server_status,
    qs_comment,
    qs_slices,
    qs_vnc,
    qs_vnc_port,
    qs_rootpass,
    qs_mac,
    qs_os,
    qs_version,
    qs_location,
    qs_platform,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
