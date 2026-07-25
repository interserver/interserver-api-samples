part of swagger.api;

class WebsiteExtraInfoTables {
  
  WebsiteTable links = null;

  WebsiteTable preview = null;

  WebsiteTable dns = null;

  WebsiteExtraInfoTables();

  @override
  String toString() {
    return 'WebsiteExtraInfoTables[links=$links, preview=$preview, dns=$dns, ]';
  }

  WebsiteExtraInfoTables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new WebsiteTable.fromJson(json['links']);
    preview = new WebsiteTable.fromJson(json['preview']);
    dns = new WebsiteTable.fromJson(json['dns']);
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'preview': preview,
      'dns': dns
     };
  }

  static List<WebsiteExtraInfoTables> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteExtraInfoTables>() : json.map((value) => new WebsiteExtraInfoTables.fromJson(value)).toList();
  }

  static Map<String, WebsiteExtraInfoTables> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteExtraInfoTables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteExtraInfoTables.fromJson(value));
    }
    return map;
  }
}
