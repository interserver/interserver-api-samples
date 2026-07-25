# ServiceOrderPostResponse

Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_continue** | **bool** | Whether the order was accepted and can proceed to payment. | [optional] 
**errors** | **List[str]** | List of validation errors (empty on success). | [optional] 
**total_cost** | **str** | Total cost of the order. | [optional] 
**iid** | **str** | Primary invoice ID for payment. | [optional] 
**iids** | **List[str]** | All invoice identifiers associated with the order. | [optional] 
**real_iids** | **List[str]** | Numeric invoice IDs for use with billing endpoints. | [optional] 
**service_id** | **int** | The new service ID created by the order. | [optional] 
**invoice_description** | **str** | Human-readable description of the invoice. | [optional] 

## Example

```python
from interserver_api_client.models.service_order_post_response import ServiceOrderPostResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceOrderPostResponse from a JSON string
service_order_post_response_instance = ServiceOrderPostResponse.from_json(json)
# print the JSON string representation of the object
print(ServiceOrderPostResponse.to_json())

# convert the object into a dict
service_order_post_response_dict = service_order_post_response_instance.to_dict()
# create an instance of ServiceOrderPostResponse from a dict
service_order_post_response_from_dict = ServiceOrderPostResponse.from_dict(service_order_post_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


