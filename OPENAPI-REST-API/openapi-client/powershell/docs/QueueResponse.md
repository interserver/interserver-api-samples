# QueueResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** | Response text | 
**QueueId** | **Int32** | The Queue ID attached to the action. | 

## Examples

- Prepare the resource
```powershell
$QueueResponse = Initialize-InterserverApiQueueResponse  -Text Action has been sent to the server. Please allow up to 2 minutes for action to be completed. `
 -QueueId 14670065
```

- Convert the resource to JSON
```powershell
$QueueResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

