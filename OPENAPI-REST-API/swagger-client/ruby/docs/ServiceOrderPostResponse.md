# InterserverApiClient::ServiceOrderPostResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continue** | **BOOLEAN** | Whether the order was accepted and can proceed to payment. | [optional] 
**errors** | **Array&lt;String&gt;** | List of validation errors (empty on success). | [optional] 
**total_cost** | **String** | Total cost of the order. | [optional] 
**iid** | **String** | Primary invoice ID for payment. | [optional] 
**iids** | **Array&lt;String&gt;** | All invoice identifiers associated with the order. | [optional] 
**real_iids** | **Array&lt;String&gt;** | Numeric invoice IDs for use with billing endpoints. | [optional] 
**service_id** | **Integer** | The new service ID created by the order. | [optional] 
**invoice_description** | **String** | Human-readable description of the invoice. | [optional] 

