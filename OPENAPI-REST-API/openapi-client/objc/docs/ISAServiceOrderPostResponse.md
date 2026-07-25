# ISAServiceOrderPostResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_continue** | **NSNumber*** | Whether the order was accepted and can proceed to payment. | [optional] 
**errors** | **NSArray&lt;NSString*&gt;*** | List of validation errors (empty on success). | [optional] 
**totalCost** | **NSString*** | Total cost of the order. | [optional] 
**iid** | **NSString*** | Primary invoice ID for payment. | [optional] 
**iids** | **NSArray&lt;NSString*&gt;*** | All invoice identifiers associated with the order. | [optional] 
**realIids** | **NSArray&lt;NSString*&gt;*** | Numeric invoice IDs for use with billing endpoints. | [optional] 
**serviceId** | **NSNumber*** | The new service ID created by the order. | [optional] 
**invoiceDescription** | **NSString*** | Human-readable description of the invoice. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


