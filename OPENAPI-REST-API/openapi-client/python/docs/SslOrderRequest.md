# SslOrderRequest

Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **int** | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | **str** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approver_email** | **str** | Domain-control approver email (required for all SSL orders). | 
**frequency** | **int** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**coupon** | **str** | Coupon code. | [optional] [default to '']
**csr_type** | **str** | Whether the CSR is server-generated or customer-provided. | [optional] [default to 'generated']
**csr** | **str** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to '']
**firstname** | **str** | Contact first name (defaults from account). | [optional] 
**lastname** | **str** | Contact last name (defaults from account). | [optional] 
**email** | **str** | Contact email (defaults from account). | [optional] 
**address** | **str** | Contact address (defaults from account). | [optional] 
**city** | **str** | Contact city (defaults from account). | [optional] 
**state** | **str** | Contact state/region (defaults from account). | [optional] 
**zip** | **str** | Contact postal code (defaults from account). | [optional] 
**country** | **str** | Contact country (defaults from account). | [optional] 
**phone** | **str** | Contact phone (defaults from account). | [optional] 
**company** | **str** | Contact company/organization (defaults from account). | [optional] 
**department** | **str** | Contact department (defaults to Administration). | [optional] [default to 'Administration']
**agency** | **str** | EV certificate incorporating agency (only for EV packages). | [optional] 
**business_category** | **str** | EV certificate business category (only for EV packages). | [optional] 

## Example

```python
from interserver_api_client.models.ssl_order_request import SslOrderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SslOrderRequest from a JSON string
ssl_order_request_instance = SslOrderRequest.from_json(json)
# print the JSON string representation of the object
print(SslOrderRequest.to_json())

# convert the object into a dict
ssl_order_request_dict = ssl_order_request_instance.to_dict()
# create an instance of SslOrderRequest from a dict
ssl_order_request_from_dict = SslOrderRequest.from_dict(ssl_order_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


