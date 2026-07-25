part of swagger.api;

class ServerExtraInfoTables {
  
  ServerAssets assets = null;

  ServerExtraInfoTables();

  @override
  String toString() {
    return 'ServerExtraInfoTables[assets=$assets, ]';
  }

  ServerExtraInfoTables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assets = new ServerAssets.fromJson(json['assets']);
  }

  Map<String, dynamic> toJson() {
    return {
      'assets': assets
     };
  }

  static List<ServerExtraInfoTables> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerExtraInfoTables>() : json.map((value) => new ServerExtraInfoTables.fromJson(value)).toList();
  }

  static Map<String, ServerExtraInfoTables> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerExtraInfoTables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerExtraInfoTables.fromJson(value));
    }
    return map;
  }
}
