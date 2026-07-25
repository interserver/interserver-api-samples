

# ServiceOrderPostResponse

Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**_continue** | **Boolean** | Whether the order was accepted and can proceed to payment. |  [optional] |
|**errors** | **List&lt;String&gt;** | List of validation errors (empty on success). |  [optional] |
|**totalCost** | **String** | Total cost of the order. |  [optional] |
|**iid** | **String** | Primary invoice ID for payment. |  [optional] |
|**iids** | **List&lt;String&gt;** | All invoice identifiers associated with the order. |  [optional] |
|**realIids** | **List&lt;String&gt;** | Numeric invoice IDs for use with billing endpoints. |  [optional] |
|**serviceId** | **Integer** | The new service ID created by the order. |  [optional] |
|**invoiceDescription** | **String** | Human-readable description of the invoice. |  [optional] |


## Implemented Interfaces

* Serializable


