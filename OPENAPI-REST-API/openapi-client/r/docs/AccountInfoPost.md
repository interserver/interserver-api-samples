# interserverapi::AccountInfoPost

Request to update account information.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Your name. | 
**company** | **character** | Your company name. | [optional] 
**address** | **character** | Your address. | 
**address2** | **character** | Additional address information. | [optional] 
**city** | **character** | Your city. | 
**state** | **character** | Your state. | 
**zip** | **character** | Your ZIP code. | 
**country** | **character** | Your country. | 
**phone** | **character** | Your phone number. | 
**locale** | **character** | Your preferred locale. | [optional] 
**email_invoices** | **character** | Your email for invoice notifications. | [optional] 
**email_abuse** | **character** | Your email for abuse notifications. | [optional] 
**disable_reset** | **character** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | [optional] 
**disable_reinstall** | **character** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | [optional] 
**disable_server_notifications** | **character** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | [optional] 
**disable_email_notifications** | **character** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | [optional] 
**gstin** | **character** | Your GST identification number (if applicable). | [optional] 


