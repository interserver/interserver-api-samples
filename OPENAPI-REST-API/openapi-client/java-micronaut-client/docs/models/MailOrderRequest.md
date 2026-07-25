

# MailOrderRequest

Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.

The class is defined in **[MailOrderRequest.java](../../src/main/java/org/openapitools/model/MailOrderRequest.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceType** | `Integer` | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | 
**coupon** | `String` | Coupon code. |  [optional property]
**comment** | `String` | Free-form note saved on the service row (used on addMail). |  [optional property]





