# InterserverApiClient.ServiceOrderPostResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_continue** | **Boolean** | Whether the order was accepted and can proceed to payment. | [optional] 
**errors** | **[String]** | List of validation errors (empty on success). | [optional] 
**total_cost** | **String** | Total cost of the order. | [optional] 
**iid** | **String** | Primary invoice ID for payment. | [optional] 
**iids** | **[String]** | All invoice identifiers associated with the order. | [optional] 
**real_iids** | **[String]** | Numeric invoice IDs for use with billing endpoints. | [optional] 
**serviceId** | **Number** | The new service ID created by the order. | [optional] 
**invoice_description** | **String** | Human-readable description of the invoice. | [optional] 


