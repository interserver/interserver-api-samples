

# MailStatsType

Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.

The class is defined in **[MailStatsType.java](../../src/main/java/org/openapitools/model/MailStatsType.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time** | [**TimeEnum**](#TimeEnum) |  |  [optional property]
**usage** | `Integer` |  |  [optional property]
**currency** | `String` |  |  [optional property]
**currencySymbol** | `String` |  |  [optional property]
**cost** | `Double` |  |  [optional property]
**received** | `Integer` |  |  [optional property]
**sent** | `Integer` |  |  [optional property]
**volume** | [`MailStatsTypeVolume`](MailStatsTypeVolume.md) |  |  [optional property]

## TimeEnum

Name | Value
---- | -----
ALL | `"all"`
BILLING | `"billing"`
MONTH | `"month"`
_7D | `"7d"`
_24H | `"24h"`
TODAY | `"today"`
_1H | `"1h"`
UNKNOWN_DEFAULT_OPEN_API | `"unknown_default_open_api"`









