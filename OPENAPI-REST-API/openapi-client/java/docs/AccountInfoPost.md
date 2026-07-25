

# AccountInfoPost

Request to update account information.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | Your name. |  |
|**address** | **String** | Your address. |  |
|**city** | **String** | Your city. |  |
|**state** | **String** | Your state. |  |
|**zip** | **String** | Your ZIP code. |  |
|**country** | **String** | Your country. |  |
|**phone** | **String** | Your phone number. |  |
|**company** | **String** | Your company name. |  [optional] |
|**address2** | **String** | Additional address information. |  [optional] |
|**locale** | **String** | Your preferred locale. |  [optional] |
|**emailInvoices** | **String** | Your email for invoice notifications. |  [optional] |
|**emailAbuse** | **String** | Your email for abuse notifications. |  [optional] |
|**disableReset** | **Boolean** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. |  [optional] |
|**disableReinstall** | **Boolean** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. |  [optional] |
|**disableServerNotifications** | **Boolean** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. |  [optional] |
|**disableEmailNotifications** | **Boolean** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. |  [optional] |
|**gstin** | **String** | Your GST identification number (if applicable). |  [optional] |


## Implemented Interfaces

* Serializable


