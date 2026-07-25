part of swagger.api;

class License {
  
  LicenseServiceInfo serviceInfo = null;

  List<LicenseClientLink> clientLinks = [];

  LicenseBillingDetails billingDetails = null;
/* Customer's currency */
  String custCurrency = null;
/* Currency symbol for customer */
  String custCurrencySymbol = null;
/* Package name */
  String package = null;
/* Extra service information */
  List<String> serviceExtra = [];

  LicenseExtraInfoTables extraInfoTables = null;
/* Extra service overview information */
  String serviceOverviewExtra = null;

  LicenseServiceType serviceType = null;
/* License key */
  String licenseKey = null;

  License();

  @override
  String toString() {
    return 'License[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, package=$package, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, serviceOverviewExtra=$serviceOverviewExtra, serviceType=$serviceType, licenseKey=$licenseKey, ]';
  }

  License.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceInfo = new LicenseServiceInfo.fromJson(json['serviceInfo']);
    clientLinks = LicenseClientLink.listFromJson(json['client_links']);
    billingDetails = new LicenseBillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    package = json['package'];
    serviceExtra = (json['serviceExtra'] as List).map((item) => item as String).toList();
    extraInfoTables = new LicenseExtraInfoTables.fromJson(json['extraInfoTables']);
    serviceOverviewExtra = json['service_overview_extra'];
    serviceType = new LicenseServiceType.fromJson(json['serviceType']);
    licenseKey = json['license_key'];
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceInfo': serviceInfo,
      'client_links': clientLinks,
      'billingDetails': billingDetails,
      'custCurrency': custCurrency,
      'custCurrencySymbol': custCurrencySymbol,
      'package': package,
      'serviceExtra': serviceExtra,
      'extraInfoTables': extraInfoTables,
      'service_overview_extra': serviceOverviewExtra,
      'serviceType': serviceType,
      'license_key': licenseKey
     };
  }

  static List<License> listFromJson(List<dynamic> json) {
    return json == null ? new List<License>() : json.map((value) => new License.fromJson(value)).toList();
  }

  static Map<String, License> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, License>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new License.fromJson(value));
    }
    return map;
  }
}
