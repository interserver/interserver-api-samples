part of swagger.api;

class Quickserver {
  
  QuickserverServiceInfo serviceInfo = null;

  List<QuickserverClientLink> clientLinks = [];

  QuickserverBillingDetails billingDetails = null;
/* Currency of the customer */
  String custCurrency = null;
/* Currency symbol of the customer */
  String custCurrencySymbol = null;

  QuickserverServiceMaster serviceMaster = null;
/* Package name */
  String package = null;
/* Operating system template */
  String osTemplate = null;

  QuickserverServiceExtra serviceExtra = null;

  QuickserverExtraInfoTables extraInfoTables = null;
/* CPU graph data */
  String cpuGraphData = null;
/* Bandwidth x-axis data */
  String bandwidthXaxis = null;
/* Bandwidth y-axis data */
  String bandwidthYaxis = null;
/* Module information */
  String module = null;
/* Authentication token */
  String token = null;
/* Used disk space */
  String serviceDiskUsed = null;
/* Total disk space */
  String serviceDiskTotal = null;
/* Disk usage percentage */
  double diskPercentage = null;
/* Memory information */
  String memory = null;
/* HDD information */
  String hdd = null;

  List<String> serviceOverviewExtra = [];

  Quickserver();

  @override
  String toString() {
    return 'Quickserver[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceMaster=$serviceMaster, package=$package, osTemplate=$osTemplate, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, cpuGraphData=$cpuGraphData, bandwidthXaxis=$bandwidthXaxis, bandwidthYaxis=$bandwidthYaxis, module=$module, token=$token, serviceDiskUsed=$serviceDiskUsed, serviceDiskTotal=$serviceDiskTotal, diskPercentage=$diskPercentage, memory=$memory, hdd=$hdd, serviceOverviewExtra=$serviceOverviewExtra, ]';
  }

  Quickserver.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceInfo = new QuickserverServiceInfo.fromJson(json['serviceInfo']);
    clientLinks = QuickserverClientLink.listFromJson(json['client_links']);
    billingDetails = new QuickserverBillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    serviceMaster = new QuickserverServiceMaster.fromJson(json['serviceMaster']);
    package = json['package'];
    osTemplate = json['os_template'];
    serviceExtra = new QuickserverServiceExtra.fromJson(json['serviceExtra']);
    extraInfoTables = new QuickserverExtraInfoTables.fromJson(json['extraInfoTables']);
    cpuGraphData = json['cpu_graph_data'];
    bandwidthXaxis = json['bandwidth_xaxis'];
    bandwidthYaxis = json['bandwidth_yaxis'];
    module = json['module'];
    token = json['token'];
    serviceDiskUsed = json['service_disk_used'];
    serviceDiskTotal = json['service_disk_total'];
    diskPercentage = json['disk_percentage'];
    memory = json['memory'];
    hdd = json['hdd'];
    serviceOverviewExtra = (json['service_overview_extra'] as List).map((item) => item as String).toList();
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
      'bandwidth_xaxis': bandwidthXaxis,
      'bandwidth_yaxis': bandwidthYaxis,
      'module': module,
      'token': token,
      'service_disk_used': serviceDiskUsed,
      'service_disk_total': serviceDiskTotal,
      'disk_percentage': diskPercentage,
      'memory': memory,
      'hdd': hdd,
      'service_overview_extra': serviceOverviewExtra
     };
  }

  static List<Quickserver> listFromJson(List<dynamic> json) {
    return json == null ? new List<Quickserver>() : json.map((value) => new Quickserver.fromJson(value)).toList();
  }

  static Map<String, Quickserver> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Quickserver>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Quickserver.fromJson(value));
    }
    return map;
  }
}
