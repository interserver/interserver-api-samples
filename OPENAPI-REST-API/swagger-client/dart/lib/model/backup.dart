part of swagger.api;

class Backup {
  
  BackupServiceInfo serviceInfo = null;

  List<BackupClientLink> clientLinks = [];

  BackupBillingDetails billingDetails = null;
/* Customer's currency. */
  String custCurrency = null;
/* Customer's currency symbol. */
  String custCurrencySymbol = null;

  BackupServiceMaster serviceMaster = null;
/* Package information. */
  String package = null;

  BackupServiceExtra serviceExtra = null;

  BackupExtraInfoTables extraInfoTables = null;

  Backup();

  @override
  String toString() {
    return 'Backup[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceMaster=$serviceMaster, package=$package, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, ]';
  }

  Backup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceInfo = new BackupServiceInfo.fromJson(json['serviceInfo']);
    clientLinks = BackupClientLink.listFromJson(json['client_links']);
    billingDetails = new BackupBillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    serviceMaster = new BackupServiceMaster.fromJson(json['serviceMaster']);
    package = json['package'];
    serviceExtra = new BackupServiceExtra.fromJson(json['serviceExtra']);
    extraInfoTables = new BackupExtraInfoTables.fromJson(json['extraInfoTables']);
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

  static List<Backup> listFromJson(List<dynamic> json) {
    return json == null ? new List<Backup>() : json.map((value) => new Backup.fromJson(value)).toList();
  }

  static Map<String, Backup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Backup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Backup.fromJson(value));
    }
    return map;
  }
}
