# interserver_api.model.WebsiteOrderPostRequest

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**packageId** | **int** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**rootpass** | **Optional&lt;String?&gt;** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to '']
**period** | **Optional&lt;int?&gt;** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1]
**coupon** | **Optional&lt;String?&gt;** | Coupon code. | [optional] [default to '']
**serviceOfferId** | **Optional&lt;int?&gt;** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0]
**script** | **Optional&lt;int?&gt;** | Auto-installer id (0 = none). | [optional] [default to 0]
**comment** | **Optional&lt;String?&gt;** | Free-form note saved on the service row. | [optional] [default to '']
**registerDomain** | **Optional&lt;bool?&gt;** | When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


