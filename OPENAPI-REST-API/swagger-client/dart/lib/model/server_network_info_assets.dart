part of swagger.api;

class ServerNetworkInfoAssets {
  
  ServerAsset n3497 = null;

  ServerNetworkInfoAssets();

  @override
  String toString() {
    return 'ServerNetworkInfoAssets[n3497=$n3497, ]';
  }

  ServerNetworkInfoAssets.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n3497 = new ServerAsset.fromJson(json['3497']);
  }

  Map<String, dynamic> toJson() {
    return {
      '3497': n3497
     };
  }

  static List<ServerNetworkInfoAssets> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerNetworkInfoAssets>() : json.map((value) => new ServerNetworkInfoAssets.fromJson(value)).toList();
  }

  static Map<String, ServerNetworkInfoAssets> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerNetworkInfoAssets>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerNetworkInfoAssets.fromJson(value));
    }
    return map;
  }
}
