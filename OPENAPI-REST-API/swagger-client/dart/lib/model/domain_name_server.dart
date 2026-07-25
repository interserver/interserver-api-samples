part of swagger.api;

class DomainNameServer {
  
  String sortorder = null;

  String name = null;

  String ipaddress = null;

  DomainNameServer();

  @override
  String toString() {
    return 'DomainNameServer[sortorder=$sortorder, name=$name, ipaddress=$ipaddress, ]';
  }

  DomainNameServer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sortorder = json['sortorder'];
    name = json['name'];
    ipaddress = json['ipaddress'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sortorder': sortorder,
      'name': name,
      'ipaddress': ipaddress
     };
  }

  static List<DomainNameServer> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainNameServer>() : json.map((value) => new DomainNameServer.fromJson(value)).toList();
  }

  static Map<String, DomainNameServer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainNameServer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainNameServer.fromJson(value));
    }
    return map;
  }
}
