# interserverapi::MailStatsType

Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time** | **character** |  | [optional] [default to &quot;1h&quot;] [Enum: [all, billing, month, 7d, 24h, today, 1h]] 
**usage** | **integer** |  | [optional] 
**currency** | **character** |  | [optional] 
**currencySymbol** | **character** |  | [optional] 
**cost** | **numeric** |  | [optional] 
**received** | **integer** |  | [optional] 
**sent** | **integer** |  | [optional] 
**volume** | [**MailStatsTypeVolume**](MailStatsType_volume.md) |  | [optional] 


