part of swagger.api;

class Server {
  
  bool ipmiAuth = null;

  List<ServerClientLink> clientLinks = [];

  ServerBillingDetails billingDetails = null;

  String custCurrency = null;

  String custCurrencySymbol = null;

  String package = null;

  List<String> serviceExtra = [];

  ServerLocations locations = null;

  ServerNetworkInfo networkInfo = null;

  ServerExtraInfoTables extraInfoTables = null;

  ServerServiceInfo serviceInfo = null;

  Server();

  @override
  String toString() {
    return 'Server[ipmiAuth=$ipmiAuth, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, package=$package, serviceExtra=$serviceExtra, locations=$locations, networkInfo=$networkInfo, extraInfoTables=$extraInfoTables, serviceInfo=$serviceInfo, ]';
  }

  Server.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ipmiAuth = json['ipmiAuth'];
    clientLinks = ServerClientLink.listFromJson(json['client_links']);
    billingDetails = new ServerBillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    package = json['package'];
    serviceExtra = (json['serviceExtra'] as List).map((item) => item as String).toList();
    locations = new ServerLocations.fromJson(json['locations']);
    networkInfo = new ServerNetworkInfo.fromJson(json['networkInfo']);
    extraInfoTables = new ServerExtraInfoTables.fromJson(json['extraInfoTables']);
    serviceInfo = new ServerServiceInfo.fromJson(json['serviceInfo']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ipmiAuth': ipmiAuth,
      'client_links': clientLinks,
      'billingDetails': billingDetails,
      'custCurrency': custCurrency,
      'custCurrencySymbol': custCurrencySymbol,
      'package': package,
      'serviceExtra': serviceExtra,
      'locations': locations,
      'networkInfo': networkInfo,
      'extraInfoTables': extraInfoTables,
      'serviceInfo': serviceInfo
     };
  }

  static List<Server> listFromJson(List<dynamic> json) {
    return json == null ? new List<Server>() : json.map((value) => new Server.fromJson(value)).toList();
  }

  static Map<String, Server> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Server>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Server.fromJson(value));
    }
    return map;
  }
}
