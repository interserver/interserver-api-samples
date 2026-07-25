part of swagger.api;

class MailSchema {
  
  MailServiceInfo serviceInfo = null;
/* Links related to the mail service for clients. */
  List<MailClientLink> clientLinks = [];

  MailBillingDetails billingDetails = null;
/* The customer's currency. */
  String custCurrency = null;
/* The currency symbol for the customer. */
  String custCurrencySymbol = null;
/* The package of the mail service. */
  String package = null;
/* Extra information for the mail service. */
  List<String> serviceExtra = [];

  MailSchemaExtraInfoTables extraInfoTables = null;

  MailServiceType serviceType = null;
/* The usage count of the mail service. */
  String usageCount = null;

  MailSchema();

  @override
  String toString() {
    return 'MailSchema[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, package=$package, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, serviceType=$serviceType, usageCount=$usageCount, ]';
  }

  MailSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceInfo = new MailServiceInfo.fromJson(json['serviceInfo']);
    clientLinks = MailClientLink.listFromJson(json['client_links']);
    billingDetails = new MailBillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    package = json['package'];
    serviceExtra = (json['serviceExtra'] as List).map((item) => item as String).toList();
    extraInfoTables = new MailSchemaExtraInfoTables.fromJson(json['extraInfoTables']);
    serviceType = new MailServiceType.fromJson(json['serviceType']);
    usageCount = json['usage_count'];
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
      'serviceType': serviceType,
      'usage_count': usageCount
     };
  }

  static List<MailSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailSchema>() : json.map((value) => new MailSchema.fromJson(value)).toList();
  }

  static Map<String, MailSchema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailSchema.fromJson(value));
    }
    return map;
  }
}
