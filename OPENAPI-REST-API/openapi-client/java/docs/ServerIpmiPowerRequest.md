

# ServerIpmiPowerRequest

IPMI Power command for servers

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**action** | [**ActionEnum**](#ActionEnum) | The power action to send to the ipmi controller. |  |
|**asset** | **Integer** | The Asset ID |  [optional] |



## Enum: ActionEnum

| Name | Value |
|---- | -----|
| cycle | &quot;cycle&quot; |
| reset | &quot;reset&quot; |
| on | &quot;on&quot; |
| off | &quot;off&quot; |
| soft | &quot;soft&quot; |


## Implemented Interfaces

* Serializable


