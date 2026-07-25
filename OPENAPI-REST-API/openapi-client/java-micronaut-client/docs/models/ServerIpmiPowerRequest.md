

# ServerIpmiPowerRequest

IPMI Power command for servers

The class is defined in **[ServerIpmiPowerRequest.java](../../src/main/java/org/openapitools/model/ServerIpmiPowerRequest.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | [**ActionEnum**](#ActionEnum) | The power action to send to the ipmi controller. | 
**asset** | `Integer` | The Asset ID |  [optional property]

## ActionEnum

Name | Value
---- | -----
CYCLE | `"cycle"`
RESET | `"reset"`
ON | `"on"`
OFF | `"off"`
SOFT | `"soft"`
UNKNOWN_DEFAULT_OPEN_API | `"unknown_default_open_api"`



