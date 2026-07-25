part of swagger.api;

class Vps {
  
  VpsServiceInfo serviceInfo = null;

  List<VpsClientLink> clientLinks = [];

  VpsBillingDetails billingDetails = null;

  String custCurrency = null;

  String custCurrencySymbol = null;

  VpsServiceMaster serviceMaster = null;

  String package = null;

  String osTemplate = null;

  VpsServiceExtra serviceExtra = null;

  VpsExtraInfoTables extraInfoTables = null;

  Object cpuGraphData = null;

  String module = null;

  String token = null;

  int daLink = null;

  int srLink = null;

  VpsCPData cpData = null;

  VpsDAData daData = null;

  VpsPlesk12Data plesk12Data = null;

  VpsServiceAddons serviceAddons = null;

  Vps();

  @override
  String toString() {
    return 'Vps[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceMaster=$serviceMaster, package=$package, osTemplate=$osTemplate, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, cpuGraphData=$cpuGraphData, module=$module, token=$token, daLink=$daLink, srLink=$srLink, cpData=$cpData, daData=$daData, plesk12Data=$plesk12Data, serviceAddons=$serviceAddons, ]';
  }

  Vps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceInfo = new VpsServiceInfo.fromJson(json['serviceInfo']);
    clientLinks = VpsClientLink.listFromJson(json['client_links']);
    billingDetails = new VpsBillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    serviceMaster = new VpsServiceMaster.fromJson(json['serviceMaster']);
    package = json['package'];
    osTemplate = json['os_template'];
    serviceExtra = new VpsServiceExtra.fromJson(json['serviceExtra']);
    extraInfoTables = new VpsExtraInfoTables.fromJson(json['extraInfoTables']);
    cpuGraphData = new Object.fromJson(json['cpu_graph_data']);
    module = json['module'];
    token = json['token'];
    daLink = json['da_link'];
    srLink = json['sr_link'];
    cpData = new VpsCPData.fromJson(json['cp_data']);
    daData = new VpsDAData.fromJson(json['da_data']);
    plesk12Data = new VpsPlesk12Data.fromJson(json['plesk12_data']);
    serviceAddons = new VpsServiceAddons.fromJson(json['serviceAddons']);
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
      'os_template': osTemplate,
      'serviceExtra': serviceExtra,
      'extraInfoTables': extraInfoTables,
      'cpu_graph_data': cpuGraphData,
      'module': module,
      'token': token,
      'da_link': daLink,
      'sr_link': srLink,
      'cp_data': cpData,
      'da_data': daData,
      'plesk12_data': plesk12Data,
      'serviceAddons': serviceAddons
     };
  }

  static List<Vps> listFromJson(List<dynamic> json) {
    return json == null ? new List<Vps>() : json.map((value) => new Vps.fromJson(value)).toList();
  }

  static Map<String, Vps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Vps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Vps.fromJson(value));
    }
    return map;
  }
}
