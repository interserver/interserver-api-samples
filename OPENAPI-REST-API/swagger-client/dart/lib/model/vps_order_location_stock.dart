part of swagger.api;

class VpsOrderLocationStock {
  
  VpsOrderLocationStock1 n1 = null;

  VpsOrderLocationStock();

  @override
  String toString() {
    return 'VpsOrderLocationStock[n1=$n1, ]';
  }

  VpsOrderLocationStock.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n1 = new VpsOrderLocationStock1.fromJson(json['1']);
  }

  Map<String, dynamic> toJson() {
    return {
      '1': n1
     };
  }

  static List<VpsOrderLocationStock> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderLocationStock>() : json.map((value) => new VpsOrderLocationStock.fromJson(value)).toList();
  }

  static Map<String, VpsOrderLocationStock> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderLocationStock>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderLocationStock.fromJson(value));
    }
    return map;
  }
}
