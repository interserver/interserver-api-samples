

# FloatingIpOrderRequest

Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**serviceType** | **Integer** | Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). |  |
|**coupon** | **String** | Coupon code. |  [optional] |
|**comment** | **String** | Free-form note saved on the service row (used on addFloatingIp). |  [optional] |


## Implemented Interfaces

* Serializable


