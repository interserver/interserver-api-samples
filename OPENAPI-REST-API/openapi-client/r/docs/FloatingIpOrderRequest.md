# interserverapi::FloatingIpOrderRequest

Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceType** | **integer** | Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). | 
**coupon** | **character** | Coupon code. | [optional] [default to &quot;&quot;] 
**comment** | **character** | Free-form note saved on the service row (used on addFloatingIp). | [optional] [default to &quot;&quot;] 


