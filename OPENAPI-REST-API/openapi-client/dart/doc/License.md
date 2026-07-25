# interserver_api.model.License

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**LicenseServiceInfo**](LicenseServiceInfo.md) |  | 
**clientLinks** | [**List<LicenseClientLink>**](LicenseClientLink.md) |  | [default to const []]
**billingDetails** | [**LicenseBillingDetails**](LicenseBillingDetails.md) |  | 
**custCurrency** | **String** | Customer's currency | 
**custCurrencySymbol** | **String** | Currency symbol for customer | 
**package** | **String** | Package name | 
**serviceExtra** | **List<String>** | Extra service information | [default to const []]
**extraInfoTables** | [**LicenseExtraInfoTables**](LicenseExtraInfoTables.md) |  | 
**serviceOverviewExtra** | **String** | Extra service overview information | 
**serviceType** | [**LicenseServiceType**](LicenseServiceType.md) |  | 
**licenseKey** | **String** | License key | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


