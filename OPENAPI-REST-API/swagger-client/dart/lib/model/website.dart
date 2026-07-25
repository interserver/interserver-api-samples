part of swagger.api;

class Website {
  
  WebsiteServiceInfo serviceInfo = null;

  List<WebsiteClientLink> clientLinks = [];

  WebsiteBillingDetails billingDetails = null;
/* Customer's currency */
  String custCurrency = null;
/* Customer currency symbol */
  String custCurrencySymbol = null;

  WebsiteServiceMaster serviceMaster = null;
/* Package information */
  String package = null;

  List<WebsiteServiceExtra> serviceExtra = [];

  WebsiteExtraInfoTables extraInfoTables = null;

  Website();

  @override
  String toString() {
    return 'Website[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceMaster=$serviceMaster, package=$package, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, ]';
  }

  Website.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceInfo = new WebsiteServiceInfo.fromJson(json['serviceInfo']);
    clientLinks = WebsiteClientLink.listFromJson(json['client_links']);
    billingDetails = new WebsiteBillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    serviceMaster = new WebsiteServiceMaster.fromJson(json['serviceMaster']);
    package = json['package'];
    serviceExtra = WebsiteServiceExtra.listFromJson(json['serviceExtra']);
    extraInfoTables = new WebsiteExtraInfoTables.fromJson(json['extraInfoTables']);
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceInfo': serviceInfo,
      'client_links': clientLinks,
      'billingDetails': billingDetails,
      'custCurrency': custCurrency,
      'custCurrencySymbol': custCurrencySymbol,
      'serviceMaster': serviceMaster,
      'package': package,
      'serviceExtra': serviceExtra,
      'extraInfoTables': extraInfoTables
     };
  }

  static List<Website> listFromJson(List<dynamic> json) {
    return json == null ? new List<Website>() : json.map((value) => new Website.fromJson(value)).toList();
  }

  static Map<String, Website> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Website>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Website.fromJson(value));
    }
    return map;
  }
}
