# interserver_api.model.SslOrderRequest

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssl** | **int** | SSL package service type id from getNewSsl.serviceTypes. | 
**hostname** | **String** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**approverEmail** | **String** | Domain-control approver email (required for all SSL orders). | 
**frequency** | **Optional&lt;int?&gt;** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**coupon** | **Optional&lt;String?&gt;** | Coupon code. | [optional] [default to '']
**csrType** | **Optional&lt;String?&gt;** | Whether the CSR is server-generated or customer-provided. | [optional] [default to 'generated']
**csr** | **Optional&lt;String?&gt;** | PEM-encoded CSR (>= 2048-bit) when csr_type=provided. | [optional] [default to '']
**firstname** | **Optional&lt;String?&gt;** | Contact first name (defaults from account). | [optional] 
**lastname** | **Optional&lt;String?&gt;** | Contact last name (defaults from account). | [optional] 
**email** | **Optional&lt;String?&gt;** | Contact email (defaults from account). | [optional] 
**address** | **Optional&lt;String?&gt;** | Contact address (defaults from account). | [optional] 
**city** | **Optional&lt;String?&gt;** | Contact city (defaults from account). | [optional] 
**state** | **Optional&lt;String?&gt;** | Contact state/region (defaults from account). | [optional] 
**zip** | **Optional&lt;String?&gt;** | Contact postal code (defaults from account). | [optional] 
**country** | **Optional&lt;String?&gt;** | Contact country (defaults from account). | [optional] 
**phone** | **Optional&lt;String?&gt;** | Contact phone (defaults from account). | [optional] 
**company** | **Optional&lt;String?&gt;** | Contact company/organization (defaults from account). | [optional] 
**department** | **Optional&lt;String?&gt;** | Contact department (defaults to Administration). | [optional] [default to 'Administration']
**agency** | **Optional&lt;String?&gt;** | EV certificate incorporating agency (only for EV packages). | [optional] 
**businessCategory** | **Optional&lt;String?&gt;** | EV certificate business category (only for EV packages). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


