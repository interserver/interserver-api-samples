# AccountInfoData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Group** | **String** |  | [optional] 
**Address** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**DisableCc** | **String** |  | [optional] 
**FraudrecordScore** | **String** |  | [optional] 
**Ima** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**PaymentMethod** | **String** |  | [optional] 
**Phone** | **String** |  | [optional] 
**Pin** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Zip** | **String** |  | [optional] 
**AccountId** | **String** |  | [optional] 
**AccountLid** | **String** |  | [optional] 
**Address2** | **String** |  | [optional] 
**AffiliateDockDescription** | **String** |  | [optional] 
**AffiliateDockTitle** | **String** |  | [optional] 
**AffiliatePaymentMethod** | **String** |  | [optional] 
**AffiliatePaypal** | **String** |  | [optional] 
**Cc** | **String** |  | [optional] 
**CcAuto** | **String** |  | [optional] 
**CcExp** | **String** |  | [optional] 
**CcType** | **String** |  | [optional] 
**CcWhitelist** | **String** |  | [optional] 
**Ccs** | [**AccountInfoDataCcs**](AccountInfoDataCcs.md) |  | [optional] 
**CcsAdded** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**Currency** | **String** |  | [optional] 
**DisableReinstall** | **String** |  | [optional] 
**DisableReset** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**EmailAbuse** | **String** |  | [optional] 
**EmailSettings** | [**AccountInfoDataEmailSettings**](AccountInfoDataEmailSettings.md) |  | [optional] 
**Extra** | [**AccountInfoDataExtra**](AccountInfoDataExtra.md) |  | [optional] 
**FacebookId** | **String** |  | [optional] 
**FacebookUrl** | **String** |  | [optional] 
**Firstname** | **String** |  | [optional] 
**Fraudrecord** | [**AccountInfoDataFraudrecord**](AccountInfoDataFraudrecord.md) |  | [optional] 
**GithubId** | **String** |  | [optional] 
**GithubUrl** | **String** |  | [optional] 
**GoogleId** | **String** |  | [optional] 
**GoogleUrl** | **String** |  | [optional] 
**InnertellId** | **String** |  | [optional] 
**Lastname** | **String** |  | [optional] 
**Locale** | **String** |  | [optional] 
**Maxmind** | [**AccountInfoMaxMindResponse**](AccountInfoMaxMindResponse.md) |  | [optional] 
**MaxmindScore** | **String** |  | [optional] 
**MbId** | **String** |  | [optional] 
**ModernbillId** | **String** |  | [optional] 
**Picture** | **String** |  | [optional] 
**ReferrerCoupon** | **String** |  | [optional] 
**ResellerMarkup** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**SshKey** | **String** |  | [optional] 
**SshKeyWrapped** | **String** |  | [optional] 
**ApiKey** | **String** |  | [optional] 
**ApiKeyWrapped** | **String** |  | [optional] 
**Var2faGoogleKey** | **String** |  | [optional] 
**Var2faGoogleEnabled** | **Boolean** |  | [optional] 
**Var2faGoogle** | **Int32** |  | [optional] 
**Var2faGoogleSplit** | **String** |  | [optional] 
**Var2faGoogleQr** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfoData = Initialize-InterserverApiAccountInfoData  -Group null `
 -Address null `
 -City null `
 -Country null `
 -DisableCc null `
 -FraudrecordScore null `
 -Ima null `
 -Name null `
 -PaymentMethod null `
 -Phone null `
 -Pin null `
 -State null `
 -Status null `
 -Zip null `
 -AccountId null `
 -AccountLid null `
 -Address2 null `
 -AffiliateDockDescription null `
 -AffiliateDockTitle null `
 -AffiliatePaymentMethod null `
 -AffiliatePaypal null `
 -Cc null `
 -CcAuto null `
 -CcExp null `
 -CcType null `
 -CcWhitelist null `
 -Ccs null `
 -CcsAdded null `
 -Company null `
 -Currency null `
 -DisableReinstall null `
 -DisableReset null `
 -Email null `
 -EmailAbuse null `
 -EmailSettings null `
 -Extra null `
 -FacebookId null `
 -FacebookUrl null `
 -Firstname null `
 -Fraudrecord null `
 -GithubId null `
 -GithubUrl null `
 -GoogleId null `
 -GoogleUrl null `
 -InnertellId null `
 -Lastname null `
 -Locale null `
 -Maxmind null `
 -MaxmindScore null `
 -MbId null `
 -ModernbillId null `
 -Picture null `
 -ReferrerCoupon null `
 -ResellerMarkup null `
 -Username null `
 -SshKey null `
 -SshKeyWrapped null `
 -ApiKey null `
 -ApiKeyWrapped null `
 -Var2faGoogleKey null `
 -Var2faGoogleEnabled null `
 -Var2faGoogle null `
 -Var2faGoogleSplit null `
 -Var2faGoogleQr null
```

- Convert the resource to JSON
```powershell
$AccountInfoData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

