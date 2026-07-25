# InterServerAPI::Object::Home

## Load the model package
```perl
use InterServerAPI::Object::Home;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_login_ip** | **string** | Last login IP. | 
**last_login** | **string** | Last login time. | 
**currency** | **string** | Currency symbol. | 
**amount** | **string** | Amount with currency. | 
**invoice_list** | **int** | Number of invoices. | 
**balance** | **string** | Balance with currency. | 
**full_name** | **string** | Users full name. | 
**email** | **string** | User email address. | 
**tickets** | **ARRAY[string]** | List of tickets. | 
**ticket_status** | [**HomeTicketStatus**](HomeTicketStatus.md) |  | 
**ticket_status_view** | [**HomeTicketStatusView**](HomeTicketStatusView.md) |  | 
**details** | [**HomeDetails**](HomeDetails.md) |  | 
**services** | [**HomeServices**](HomeServices.md) |  | 
**affiliate_amount** | **string** | Affiliate amount with currency. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


