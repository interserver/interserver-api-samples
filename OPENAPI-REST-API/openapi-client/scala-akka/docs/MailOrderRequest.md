

# MailOrderRequest

Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceType** | **Int** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | 
**coupon** | **String** | Coupon code. |  [optional]
**comment** | **String** | Free-form note saved on the service row (used on addMail). |  [optional]



