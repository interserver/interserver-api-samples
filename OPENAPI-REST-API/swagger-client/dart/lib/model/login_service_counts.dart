part of swagger.api;

class LoginServiceCounts {
  /* The number of total VPS orders that have been placed in our billing system. */
  int vps = null;
/* The number of total website orders that have been placed in our billing system. */
  int websites = null;
/* The number of total server orders that have been placed in our billing system. */
  int servers = null;

  LoginServiceCounts();

  @override
  String toString() {
    return 'LoginServiceCounts[vps=$vps, websites=$websites, servers=$servers, ]';
  }

  LoginServiceCounts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vps = json['vps'];
    websites = json['websites'];
    servers = json['servers'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vps': vps,
      'websites': websites,
      'servers': servers
     };
  }

  static List<LoginServiceCounts> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginServiceCounts>() : json.map((value) => new LoginServiceCounts.fromJson(value)).toList();
  }

  static Map<String, LoginServiceCounts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginServiceCounts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginServiceCounts.fromJson(value));
    }
    return map;
  }
}
