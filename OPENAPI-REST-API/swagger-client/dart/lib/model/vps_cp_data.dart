part of swagger.api;

class VpsCPData {
  /* Control panel name (e.g., cPanel). */
  String name = null;
/* Monthly cost in cents for the control panel license. */
  int cost = null;

  VpsCPData();

  @override
  String toString() {
    return 'VpsCPData[name=$name, cost=$cost, ]';
  }

  VpsCPData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'cost': cost
     };
  }

  static List<VpsCPData> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsCPData>() : json.map((value) => new VpsCPData.fromJson(value)).toList();
  }

  static Map<String, VpsCPData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsCPData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsCPData.fromJson(value));
    }
    return map;
  }
}
