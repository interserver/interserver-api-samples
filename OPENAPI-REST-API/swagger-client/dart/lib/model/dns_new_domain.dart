part of swagger.api;

class DnsNewDomain {
  /* The domain name. */
  String domain = null;
/* IP Address to point the domain to. */
  String ip = null;

  DnsNewDomain();

  @override
  String toString() {
    return 'DnsNewDomain[domain=$domain, ip=$ip, ]';
  }

  DnsNewDomain.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domain = json['domain'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    return {
      'domain': domain,
      'ip': ip
     };
  }

  static List<DnsNewDomain> listFromJson(List<dynamic> json) {
    return json == null ? new List<DnsNewDomain>() : json.map((value) => new DnsNewDomain.fromJson(value)).toList();
  }

  static Map<String, DnsNewDomain> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DnsNewDomain>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DnsNewDomain.fromJson(value));
    }
    return map;
  }
}
