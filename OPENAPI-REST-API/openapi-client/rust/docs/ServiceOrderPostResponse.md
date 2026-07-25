# ServiceOrderPostResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**r#continue** | Option<**bool**> | Whether the order was accepted and can proceed to payment. | [optional]
**errors** | Option<**Vec<String>**> | List of validation errors (empty on success). | [optional]
**total_cost** | Option<**String**> | Total cost of the order. | [optional]
**iid** | Option<**String**> | Primary invoice ID for payment. | [optional]
**iids** | Option<**Vec<String>**> | All invoice identifiers associated with the order. | [optional]
**real_iids** | Option<**Vec<String>**> | Numeric invoice IDs for use with billing endpoints. | [optional]
**service_id** | Option<**i32**> | The new service ID created by the order. | [optional]
**invoice_description** | Option<**String**> | Human-readable description of the invoice. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


