# interserverapi::MailOrderRequest

Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceType** | **integer** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | 
**coupon** | **character** | Coupon code. | [optional] [default to &quot;&quot;] 
**comment** | **character** | Free-form note saved on the service row (used on addMail). | [optional] [default to &quot;&quot;] 


