part of swagger.api;

class VpsOrderLocationNames {
  
  String n3 = null;

  VpsOrderLocationNames();

  @override
  String toString() {
    return 'VpsOrderLocationNames[n3=$n3, ]';
  }

  VpsOrderLocationNames.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n3 = json['3'];
  }

  Map<String, dynamic> toJson() {
    return {
      '3': n3
     };
  }

  static List<VpsOrderLocationNames> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderLocationNames>() : json.map((value) => new VpsOrderLocationNames.fromJson(value)).toList();
  }

  static Map<String, VpsOrderLocationNames> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderLocationNames>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderLocationNames.fromJson(value));
    }
    return map;
  }
}
