# ServerServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServerId** | **String** | The ID of the server. | [optional] 
**ServerHostname** | **String** | The hostname of the server. | [optional] 
**ServerCustid** | **String** | The customer ID associated with the server. | [optional] 
**ServerType** | **String** | The type of the server. | [optional] 
**ServerCurrency** | **String** | The currency used for billing. | [optional] 
**ServerOrderDate** | **String** | The date when the server was ordered. | [optional] 
**ServerInvoice** | **String** | The invoice number for the server. | [optional] 
**ServerCoupon** | **String** | The coupon associated with the server. | [optional] 
**ServerStatus** | **String** | The status of the server. | [optional] 
**ServerRoot** | **String** | The root of the server. | [optional] 
**ServerDedicatedTag** | **String** | The dedicated tag of the server. | [optional] 
**ServerCustomTag** | **String** | The custom tag of the server. | [optional] 
**ServerComment** | **String** | Comments related to the server. | [optional] 
**ServerInitialBill** | **String** | The initial billing amount for the server. | [optional] 
**ServerHardware** | **String** | The hardware information of the server. | [optional] 
**ServerIps** | **String** | The number of IPs associated with the server. | [optional] 
**ServerMonthlyBill** | **String** | The monthly billing amount for the server. | [optional] 
**ServerSetup** | **String** | The setup status of the server. | [optional] 
**ServerDiscount** | **String** | Discount information for the server. | [optional] 
**ServerRep** | **String** | The reputation of the server. | [optional] 
**ServerDate** | **String** | The date related to the server. | [optional] 
**ServerTotalCost** | **String** | The total cost of the server. | [optional] 
**ServerLocation** | **String** | The location of the server. | [optional] 
**ServerHardwareOrdered** | **String** | The ordered hardware for the server. | [optional] 
**ServerBilled** | **String** | The billed amount for the server. | [optional] 
**ServerWelcomeEmail** | **String** | Indicates whether a welcome email was sent. | [optional] 
**ServerDedicatedCpu** | **String** | The number of dedicated CPUs for the server. | [optional] 
**ServerDedicatedMemory** | **String** | The amount of dedicated memory for the server. | [optional] 
**ServerDedicatedHd1** | **String** | The size of the first dedicated hard drive. | [optional] 
**ServerDedicatedHd2** | **String** | The size of the second dedicated hard drive. | [optional] 
**ServerDedicatedBandwidth** | **String** | The bandwidth of the server. | [optional] 
**ServerDedicatedIps** | **String** | The number of dedicated IPs for the server. | [optional] 
**ServerDedicatedOs** | **String** | The operating system of the server. | [optional] 
**ServerDedicatedCp** | **String** | The control panel of the server. | [optional] 
**ServerDedicatedRaid** | **String** | The RAID configuration of the server. | [optional] 
**ServerExtra** | **String** | Additional information about the server. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerServiceInfo = Initialize-InterserverApiServerServiceInfo  -ServerId 16058 `
 -ServerHostname myserver.host.com `
 -ServerCustid 771282 `
 -ServerType 600 `
 -ServerCurrency USD `
 -ServerOrderDate 2020-05-08T17:22:36.000Z `
 -ServerInvoice 18738142 `
 -ServerCoupon 0 `
 -ServerStatus active `
 -ServerRoot  `
 -ServerDedicatedTag 0 `
 -ServerCustomTag  `
 -ServerComment  `
 -ServerInitialBill 0 `
 -ServerHardware 0 `
 -ServerIps 0 `
 -ServerMonthlyBill 0 `
 -ServerSetup 0 `
 -ServerDiscount null `
 -ServerRep 0 `
 -ServerDate 1588972956 `
 -ServerTotalCost 230 `
 -ServerLocation null `
 -ServerHardwareOrdered 0 `
 -ServerBilled 0 `
 -ServerWelcomeEmail 1 `
 -ServerDedicatedCpu 38 `
 -ServerDedicatedMemory 22 `
 -ServerDedicatedHd1 20 `
 -ServerDedicatedHd2 null `
 -ServerDedicatedBandwidth 3 `
 -ServerDedicatedIps 5 `
 -ServerDedicatedOs 30 `
 -ServerDedicatedCp null `
 -ServerDedicatedRaid 0 `
 -ServerExtra []
```

- Convert the resource to JSON
```powershell
$ServerServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

