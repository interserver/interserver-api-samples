# ServiceOrderPostResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`var&quot;continue&quot;`** | **`Bool`** | Whether the order was accepted and can proceed to payment. | [optional] [default to nothing]
**`errors`** | **`Vector{String}`** | List of validation errors (empty on success). | [optional] [default to nothing]
**`total_cost`** | **`String`** | Total cost of the order. | [optional] [default to nothing]
**`iid`** | **`String`** | Primary invoice ID for payment. | [optional] [default to nothing]
**`iids`** | **`Vector{String}`** | All invoice identifiers associated with the order. | [optional] [default to nothing]
**`real_iids`** | **`Vector{String}`** | Numeric invoice IDs for use with billing endpoints. | [optional] [default to nothing]
**`serviceId`** | **`Int64`** | The new service ID created by the order. | [optional] [default to nothing]
**`invoice_description`** | **`String`** | Human-readable description of the invoice. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


