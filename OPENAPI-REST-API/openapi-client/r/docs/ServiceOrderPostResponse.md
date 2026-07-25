# interserverapi::ServiceOrderPostResponse

Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continue** | **character** | Whether the order was accepted and can proceed to payment. | [optional] 
**errors** | **array[character]** | List of validation errors (empty on success). | [optional] 
**total_cost** | **character** | Total cost of the order. | [optional] 
**iid** | **character** | Primary invoice ID for payment. | [optional] 
**iids** | **array[character]** | All invoice identifiers associated with the order. | [optional] 
**real_iids** | **array[character]** | Numeric invoice IDs for use with billing endpoints. | [optional] 
**serviceId** | **integer** | The new service ID created by the order. | [optional] 
**invoice_description** | **character** | Human-readable description of the invoice. | [optional] 


