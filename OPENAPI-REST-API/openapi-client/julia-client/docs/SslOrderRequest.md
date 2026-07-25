# SslOrderRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`ssl`** | **`Int64`** | SSL package service type id from getNewSsl.serviceTypes. | [default to nothing]
**`hostname`** | **`String`** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | [default to nothing]
**`approver_email`** | **`String`** | Domain-control approver email (required for all SSL orders). | [default to nothing]
**`frequency`** | **`Int64`** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**`coupon`** | **`String`** | Coupon code. | [optional] [default to ""]
**`csr_type`** | **`String`** | Whether the CSR is server-generated or customer-provided. | [optional] [default to "generated"]
**`csr`** | **`String`** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to ""]
**`firstname`** | **`String`** | Contact first name (defaults from account). | [optional] [default to nothing]
**`lastname`** | **`String`** | Contact last name (defaults from account). | [optional] [default to nothing]
**`email`** | **`String`** | Contact email (defaults from account). | [optional] [default to nothing]
**`address`** | **`String`** | Contact address (defaults from account). | [optional] [default to nothing]
**`city`** | **`String`** | Contact city (defaults from account). | [optional] [default to nothing]
**`state`** | **`String`** | Contact state/region (defaults from account). | [optional] [default to nothing]
**`zip`** | **`String`** | Contact postal code (defaults from account). | [optional] [default to nothing]
**`country`** | **`String`** | Contact country (defaults from account). | [optional] [default to nothing]
**`phone`** | **`String`** | Contact phone (defaults from account). | [optional] [default to nothing]
**`company`** | **`String`** | Contact company/organization (defaults from account). | [optional] [default to nothing]
**`department`** | **`String`** | Contact department (defaults to Administration). | [optional] [default to "Administration"]
**`agency`** | **`String`** | EV certificate incorporating agency (only for EV packages). | [optional] [default to nothing]
**`business_category`** | **`String`** | EV certificate business category (only for EV packages). | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


