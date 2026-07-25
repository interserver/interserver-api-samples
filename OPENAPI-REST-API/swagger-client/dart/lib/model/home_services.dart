part of swagger.api;

class HomeServices {
  
  HomeServicesDomains domains = null;

  HomeServicesWebhosting webhosting = null;

  HomeServicesVps vps = null;

  HomeServicesLicenses licenses = null;

  HomeServicesServers servers = null;

  HomeServicesBackups backups = null;

  HomeServices();

  @override
  String toString() {
    return 'HomeServices[domains=$domains, webhosting=$webhosting, vps=$vps, licenses=$licenses, servers=$servers, backups=$backups, ]';
  }

  HomeServices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domains = new HomeServicesDomains.fromJson(json['domains']);
    webhosting = new HomeServicesWebhosting.fromJson(json['webhosting']);
    vps = new HomeServicesVps.fromJson(json['vps']);
    licenses = new HomeServicesLicenses.fromJson(json['licenses']);
    servers = new HomeServicesServers.fromJson(json['servers']);
    backups = new HomeServicesBackups.fromJson(json['backups']);
  }

  Map<String, dynamic> toJson() {
    return {
      'domains': domains,
      'webhosting': webhosting,
      'vps': vps,
      'licenses': licenses,
      'servers': servers,
      'backups': backups
     };
  }

  static List<HomeServices> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServices>() : json.map((value) => new HomeServices.fromJson(value)).toList();
  }

  static Map<String, HomeServices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServices.fromJson(value));
    }
    return map;
  }
}
