part of swagger.api;

class InlineResponse20013 {
  
  InlineResponse20013ServiceInfo serviceInfo = null;

  List<InlineResponse20013ClientLinks> clientLinks = [];

  InlineResponse20013BillingDetails billingDetails = null;

  String custCurrency = null;

  String custCurrencySymbol = null;

  String package = null;

  InlineResponse20013ExtraInfoTables extraInfoTables = null;

  InlineResponse20013FilterFirewall filterFirewall = null;

  InlineResponse20013();

  @override
  String toString() {
    return 'InlineResponse20013[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, package=$package, extraInfoTables=$extraInfoTables, filterFirewall=$filterFirewall, ]';
  }

  InlineResponse20013.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceInfo = new InlineResponse20013ServiceInfo.fromJson(json['serviceInfo']);
    clientLinks = InlineResponse20013ClientLinks.listFromJson(json['client_links']);
    billingDetails = new InlineResponse20013BillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    package = json['package'];
    extraInfoTables = new InlineResponse20013ExtraInfoTables.fromJson(json['extraInfoTables']);
    filterFirewall = new InlineResponse20013FilterFirewall.fromJson(json['filter_firewall']);
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceInfo': serviceInfo,
      'client_links': clientLinks,
      'billingDetails': billingDetails,
      'custCurrency': custCurrency,
      'custCurrencySymbol': custCurrencySymbol,
      'package': package,
      'extraInfoTables': extraInfoTables,
      'filter_firewall': filterFirewall
     };
  }

  static List<InlineResponse20013> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013>() : json.map((value) => new InlineResponse20013.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013.fromJson(value));
    }
    return map;
  }
}
