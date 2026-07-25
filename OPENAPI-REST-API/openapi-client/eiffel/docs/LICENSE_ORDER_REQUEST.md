# LICENSE_ORDER_REQUEST

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **INTEGER_32** | License service type id from getNewLicense.serviceTypes (must be buyable). | [default to null]
**ip** | [**STRING_32**](STRING_32.md) | IP address the license is bound to. | [default to null]
**tos** | **BOOLEAN** | Terms-of-service acceptance. Must be true to place the order. | [default to null]
**frequency** | **INTEGER_32** | Billing frequency in months. | [optional] [default to 1]
**coupon** | [**STRING_32**](STRING_32.md) | Coupon code. | [optional] [default to ]
**comment** | [**STRING_32**](STRING_32.md) | Free-form note saved on the service row. | [optional] [default to ]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


