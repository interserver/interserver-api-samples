

# FloatingIpOrderRequest

Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.

The class is defined in **[FloatingIpOrderRequest.java](../../src/main/java/org/openapitools/model/FloatingIpOrderRequest.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceType** | `Integer` | Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). | 
**coupon** | `String` | Coupon code. |  [optional property]
**comment** | `String` | Free-form note saved on the service row (used on addFloatingIp). |  [optional property]





