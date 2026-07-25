part of swagger.api;

class HomeDetailsModules {
  
  HomeDetailsModulesDomains domains = null;

  HomeDetailsModulesWebhosting webhosting = null;

  HomeDetailsModulesVps vps = null;

  HomeDetailsModulesLicenses licenses = null;

  HomeDetailsModulesBackups backups = null;

  HomeDetailsModulesServers servers = null;

  HomeDetailsModulesQuickservers quickservers = null;

  HomeDetailsModules();

  @override
  String toString() {
    return 'HomeDetailsModules[domains=$domains, webhosting=$webhosting, vps=$vps, licenses=$licenses, backups=$backups, servers=$servers, quickservers=$quickservers, ]';
  }

  HomeDetailsModules.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domains = new HomeDetailsModulesDomains.fromJson(json['domains']);
    webhosting = new HomeDetailsModulesWebhosting.fromJson(json['webhosting']);
    vps = new HomeDetailsModulesVps.fromJson(json['vps']);
    licenses = new HomeDetailsModulesLicenses.fromJson(json['licenses']);
    backups = new HomeDetailsModulesBackups.fromJson(json['backups']);
    servers = new HomeDetailsModulesServers.fromJson(json['servers']);
    quickservers = new HomeDetailsModulesQuickservers.fromJson(json['quickservers']);
  }

  Map<String, dynamic> toJson() {
    return {
      'domains': domains,
      'webhosting': webhosting,
      'vps': vps,
      'licenses': licenses,
      'backups': backups,
      'servers': servers,
      'quickservers': quickservers
     };
  }

  static List<HomeDetailsModules> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetailsModules>() : json.map((value) => new HomeDetailsModules.fromJson(value)).toList();
  }

  static Map<String, HomeDetailsModules> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetailsModules>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetailsModules.fromJson(value));
    }
    return map;
  }
}
