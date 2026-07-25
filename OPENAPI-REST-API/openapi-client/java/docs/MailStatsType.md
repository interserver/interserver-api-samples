

# MailStatsType

Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**time** | [**TimeEnum**](#TimeEnum) |  |  [optional] |
|**usage** | **Integer** |  |  [optional] |
|**currency** | **String** |  |  [optional] |
|**currencySymbol** | **String** |  |  [optional] |
|**cost** | **Double** |  |  [optional] |
|**received** | **Integer** |  |  [optional] |
|**sent** | **Integer** |  |  [optional] |
|**volume** | [**MailStatsTypeVolume**](MailStatsTypeVolume.md) |  |  [optional] |



## Enum: TimeEnum

| Name | Value |
|---- | -----|
| all | &quot;all&quot; |
| billing | &quot;billing&quot; |
| month | &quot;month&quot; |
| _7d | &quot;7d&quot; |
| _24h | &quot;24h&quot; |
| today | &quot;today&quot; |
| _1h | &quot;1h&quot; |


## Implemented Interfaces

* Serializable


